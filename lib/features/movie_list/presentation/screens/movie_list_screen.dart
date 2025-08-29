import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_db/core/bloc/pagination_bloc/pagination_bloc.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:movie_db/features/movie_list/presentation/widgets/movie_grid_widget.dart';
import 'package:movie_db/widgets/common_scaffold.dart';

class MovieListScreen<
  TBloc extends Bloc<PaginationEvent, PaginationState<MovieModel>>
>
    extends StatefulWidget {
  final String title;
  final TBloc Function() createBloc;

  final PaginationEvent? initialEvent;

  final String? query;

  final PaginationEvent Function(String query)? queryEventBuilder;

  const MovieListScreen({
    super.key,
    required this.title,
    required this.createBloc,
    this.initialEvent,
    this.query,
    this.queryEventBuilder,
  });

  @override
  State<MovieListScreen<TBloc>> createState() => _MovieListScreenState<TBloc>();
}

class _MovieListScreenState<
  TBloc extends Bloc<PaginationEvent, PaginationState<MovieModel>>
>
    extends State<MovieListScreen<TBloc>> {
  late final TBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = widget.createBloc();

    // Fire initial event (NowPlaying, Popular, etc.)
    if (widget.initialEvent != null) {
      bloc.add(widget.initialEvent!);
    }

    // Fire search event if query is passed
    if (widget.query != null && widget.queryEventBuilder != null) {
      bloc.add(widget.queryEventBuilder!(widget.query!));
    }
  }

  @override
  void didUpdateWidget(MovieListScreen<TBloc> oldWidget) {
    super.didUpdateWidget(oldWidget);

    // If query changes, trigger new search
    if (widget.query != oldWidget.query &&
        widget.query != null &&
        widget.queryEventBuilder != null) {
      bloc.add(widget.queryEventBuilder!(widget.query!));
    }
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TBloc>.value(
      value: bloc,
      child: BubbleBackgroundScaffold(
        title: widget.title,
        body: BlocBuilder<TBloc, PaginationState<MovieModel>>(
          builder: (context, state) {
            if (state is PaginationInitialPageLoading<MovieModel>) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is PaginationLoaded<MovieModel>) {
              return MovieGridWidget(movies: state.items);
            }
            if (state is PaginationError<MovieModel>) {
              return Center(child: Text(state.error));
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
