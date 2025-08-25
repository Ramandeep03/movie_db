import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_db/core/bloc/pagination_bloc/pagination_bloc.dart';
import 'package:movie_db/core/di/dependency_injector.dart';
import 'package:movie_db/data/models/movie_model.dart';
import 'package:movie_db/features/movie_list/presentation/bloc/get_now_playing_movies_bloc.dart';
import 'package:movie_db/features/movie_list/presentation/bloc/get_popular_movies_bloc.dart';
import 'package:movie_db/features/movie_list/presentation/bloc/get_top_rated_movies_bloc.dart';
import 'package:movie_db/features/movie_list/presentation/bloc/get_upcoming_movies_bloc.dart';
import 'package:movie_db/features/movie_list/presentation/widgets/movie_carousel.dart';
import 'package:movie_db/features/movie_list/presentation/widgets/movie_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              sl<GetPopularMoviesBloc>()..add(PaginationFetch()),
        ),
        BlocProvider(
          create: (context) =>
              sl<GetNowPlayingMoviesBloc>()..add(PaginationFetch()),
        ),
        BlocProvider(
          create: (context) =>
              sl<GetTopRatedMoviesBloc>()..add(PaginationFetch()),
        ),
        BlocProvider(
          create: (context) =>
              sl<GetUpcomingMoviesBloc>()..add(PaginationFetch()),
        ),
      ],
      child: Scaffold(
        body: ListView(
          children: [
            PopularMoviesWidget(),
            NowPlayingMovieWidget(),
            TopRatedMovieWidget(),
            UpcomingListWidget(),
          ],
        ),
      ),
    );
  }
}

class PopularMoviesWidget extends StatelessWidget {
  const PopularMoviesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPopularMoviesBloc, PaginationState<MovieModel>>(
      builder: (context, state) {
        if (state is PaginationInitialPageLoading) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is PaginationError) {
          return Center(child: Text((state as PaginationError).error));
        }
        if (state is PaginationLoaded<MovieModel>) {
          return MovieCarousel(
            movies: state.items,
            onViewDetails: (movie) {},
            onAddToFavourite: (movie) {},
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class NowPlayingMovieWidget extends StatelessWidget {
  const NowPlayingMovieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNowPlayingMoviesBloc, PaginationState<MovieModel>>(
      builder: (context, state) {
        if (state is PaginationInitialPageLoading) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is PaginationError) {
          return Center(child: Text((state as PaginationError).error));
        }
        if (state is PaginationLoaded<MovieModel>) {
          return MovieListWidget(movies: state.items, title: 'Now Playing');
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class TopRatedMovieWidget extends StatelessWidget {
  const TopRatedMovieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetTopRatedMoviesBloc, PaginationState<MovieModel>>(
      builder: (context, state) {
        if (state is PaginationInitialPageLoading) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is PaginationError) {
          return Center(child: Text((state as PaginationError).error));
        }
        if (state is PaginationLoaded<MovieModel>) {
          return MovieListWidget(movies: state.items, title: 'Top Rated');
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class UpcomingListWidget extends StatelessWidget {
  const UpcomingListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetUpcomingMoviesBloc, PaginationState<MovieModel>>(
      builder: (context, state) {
        if (state is PaginationInitialPageLoading) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is PaginationError) {
          return Center(child: Text((state as PaginationError).error));
        }
        if (state is PaginationLoaded<MovieModel>) {
          return MovieListWidget(movies: state.items, title: 'Upcoming');
        }
        return const SizedBox.shrink();
      },
    );
  }
}
