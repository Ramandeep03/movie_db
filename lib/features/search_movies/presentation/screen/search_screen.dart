import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_db/core/bloc/pagination_bloc/pagination_bloc.dart';
import 'package:movie_db/core/services/debouncer.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:movie_db/features/movie_list/presentation/widgets/movie_grid_widget.dart';
import 'package:movie_db/features/search_movies/presentation/bloc/search_movie_bloc.dart';
import 'package:movie_db/widgets/common_scaffold.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final Debouncer _debouncer = Debouncer(milliseconds: 600);
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BubbleBackgroundScaffold(
      title: 'Search Movies',
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          spacing: 20,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: "Enter keyword...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onChanged: (value) {
                  _debouncer.run(() {
                    context.read<SearchMovieBloc>().add(
                      PaginationFetch(filters: {'query': _controller.text}),
                    );
                  });
                },
              ),
            ),
            Expanded(
              child: BlocBuilder<SearchMovieBloc, PaginationState<MovieModel>>(
                builder: (context, state) {
                  if (state is PaginationInitialPageLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is PaginationLoaded<MovieModel>) {
                    return MovieGridWidget(movies: state.items);
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
