import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_db/gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    waitAndNavigate();
  }

  waitAndNavigate() {
    Future.delayed(Duration(seconds: 2), () {
      if (!mounted) return;
      context.pushReplacement('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Image.asset(Assets.logo.path)));
  }
}
