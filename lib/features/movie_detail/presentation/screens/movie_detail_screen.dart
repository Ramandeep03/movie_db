import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_db/features/movie_detail/presentation/bloc/movie_detail_bloc.dart';
import 'package:movie_db/features/movie_detail/presentation/widgets/detail_tile_widget.dart';
import 'package:movie_db/features/movie_detail/presentation/widgets/movie_detail_header.dart';
import 'package:movie_db/features/movie_detail/presentation/widgets/overview_container_widget.dart';
import 'package:movie_db/widgets/common_scaffold.dart';
import 'package:movie_db/widgets/glassmorphic_container.dart';

class MovieDetailScreen extends StatefulWidget {
  final int movieId;
  const MovieDetailScreen({super.key, required this.movieId});

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  void initState() {
    super.initState();
    context.read<MovieDetailBloc>().add(
      GetMovieDetail(movieId: widget.movieId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BubbleBackgroundScaffold(
      extendBodyBehindAppbar: true,
      actions: [
        BlocBuilder<MovieDetailBloc, MovieDetailState>(
          builder: (context, state) {
            return state.movieDetailStatus.when(
              initialOrLoading: () => SizedBox.fromSize(
                size: Size(20, 20),
                child: CircularProgressIndicator(),
              ),
              success: (data) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: GlassmorphicContainer(
                    shape: BoxShape.circle,
                    child: IconButton(
                      onPressed: () {
                        context.read<MovieDetailBloc>().add(
                          UpdateFavoriteStatus(
                            model: data.copyWith(
                              isFavourite: !(data.isFavourite ?? false),
                            ),
                          ),
                        );
                      },
                      icon: Icon(
                        (data.isFavourite ?? false)
                            ? Icons.favorite
                            : Icons.favorite_border,
                      ),
                    ),
                  ),
                );
              },
              failure: (error) => const SizedBox.shrink(),
            );
          },
        ),
      ],

      body: BlocBuilder<MovieDetailBloc, MovieDetailState>(
        builder: (context, state) {
          return state.movieDetailStatus.when(
            initialOrLoading: () => Center(child: CircularProgressIndicator()),
            success: (data) => MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView(
                children: [
                  MovieDetailHeader(data: data),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        DetailTitleWidget(data: data),
                        Text(
                          data.tagline ?? '',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                        OverviewContainerWidget(data: data),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            failure: (error) => Text("error"),
          );
        },
      ),
    );
  }
}
