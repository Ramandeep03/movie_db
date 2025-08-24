import 'package:go_router/go_router.dart';
import 'package:movie_db/features/movie_list/presentation/screens/home_screen.dart';
import 'package:movie_db/features/splash/presentation/screen/splash_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashScreen()),
      GoRoute(path: '/home', builder: (context, state) => HomeScreen()),
    ],
  );
}
