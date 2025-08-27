import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_db/core/bloc/pagination_bloc/pagination_bloc.dart';
import 'package:movie_db/core/di/dependency_injector.dart';
import 'package:movie_db/features/movie_detail/presentation/screens/movie_detail_screen.dart';
import 'package:movie_db/features/movie_list/presentation/bloc/get_now_playing_movies_bloc.dart';
import 'package:movie_db/features/movie_list/presentation/bloc/get_top_rated_movies_bloc.dart';
import 'package:movie_db/features/movie_list/presentation/bloc/get_upcoming_movies_bloc.dart';
import 'package:movie_db/features/movie_list/presentation/screens/home_screen.dart';
import 'package:movie_db/features/movie_list/presentation/screens/movie_list_screen.dart';
import 'package:movie_db/features/search_movies/presentation/bloc/search_movie_bloc.dart';
import 'package:movie_db/features/search_movies/presentation/screen/search_screen.dart';
import 'package:movie_db/features/splash/presentation/screen/splash_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashScreen()),
      GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
      GoRoute(
        path: '/now-playing-movies',
        builder: (context, state) => MovieListScreen<GetNowPlayingMoviesBloc>(
          title: 'Now Playing',
          createBloc: () => sl<GetNowPlayingMoviesBloc>(),
          initialEvent: PaginationFetch(),
        ),
      ),
      GoRoute(
        path: '/upcoming-movies',
        builder: (context, state) => MovieListScreen<GetUpcomingMoviesBloc>(
          title: 'Upcoming Movies',
          createBloc: () => sl<GetUpcomingMoviesBloc>(),
          initialEvent: PaginationFetch(),
        ),
      ),
      GoRoute(
        path: '/top-rated-movies',
        builder: (context, state) => MovieListScreen<GetTopRatedMoviesBloc>(
          title: 'Top Rated Movies',
          createBloc: () => sl<GetTopRatedMoviesBloc>(),
          initialEvent: PaginationFetch(),
        ),
      ),
      GoRoute(
        path: '/search-movies',
        builder: (context, state) => BlocProvider<SearchMovieBloc>(
          create: (context) => sl<SearchMovieBloc>(),
          child: SearchScreen(),
        ),
      ),
      GoRoute(
        path: '/movie-detail/:movie_id',
        builder: (context, state) {
          final movieId = state.pathParameters['movie_id'];

          return BlocProvider<SearchMovieBloc>(
            create: (context) => sl<SearchMovieBloc>(),
            child: MovieDetailScreen(movieId: movieId!),
          );
        },
      ),
    ],
  );
}
