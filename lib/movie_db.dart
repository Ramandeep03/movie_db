import 'package:flutter/material.dart';
import 'package:movie_db/core/router/router.dart';
import 'package:movie_db/core/theme/app_theme.dart';

class MovieDB extends StatelessWidget {
  const MovieDB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: AppTheme.theme,
    );
  }
}
