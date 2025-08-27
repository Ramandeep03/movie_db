import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_db/core/bloc/pagination_bloc/pagination_bloc.dart';
import 'package:movie_db/core/di/dependency_injector.dart';
import 'package:movie_db/core/enums/list_display_type.dart';
import 'package:movie_db/features/movie_list/presentation/bloc/get_now_playing_movies_bloc.dart';
import 'package:movie_db/features/movie_list/presentation/bloc/get_popular_movies_bloc.dart';
import 'package:movie_db/features/movie_list/presentation/bloc/get_top_rated_movies_bloc.dart';
import 'package:movie_db/features/movie_list/presentation/bloc/get_upcoming_movies_bloc.dart';
import 'package:movie_db/features/movie_list/presentation/widgets/movie_display_widget.dart';
import 'package:movie_db/widgets/glassmorphic_container.dart';

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
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          scrolledUnderElevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12), // spacing from edge
              child: GlassmorphicContainer(
                height: 50,
                width: 50,
                shape: BoxShape.circle,
                child: IconButton(
                  onPressed: () {
                    context.push('/search-movies');
                  },
                  icon: const Icon(Icons.search, size: 30, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView(
            children: [
              MovieDisplayWidget<GetPopularMoviesBloc>(
                displayType: ListDisplayType.carousel,
              ),
              MovieDisplayWidget<GetNowPlayingMoviesBloc>(
                title: 'Now Playing',
                onSeeAllClicked: () {
                  context.push('/now-playing-movies');
                },
              ),
              MovieDisplayWidget<GetTopRatedMoviesBloc>(
                title: 'Top Rated',
                onSeeAllClicked: () {
                  context.push('/top-rated-movies');
                },
              ),
              MovieDisplayWidget<GetUpcomingMoviesBloc>(
                title: 'Upcoming Movies',
                onSeeAllClicked: () {
                  context.push('/upcoming-movies');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
