import 'package:flutter/material.dart';
import 'package:movie_db/config/router/router.dart';
import 'package:movie_db/config/theme/app_theme.dart';

class MovieDB extends StatelessWidget {
  const MovieDB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      routerConfig: AppRouter.router,
      theme: darkTheme,
    );
  }
}
