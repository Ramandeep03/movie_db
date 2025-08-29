import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_db/gen/assets.gen.dart';
import 'package:movie_db/movie_db.dart';
import 'package:movie_db/core/di/dependency_injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: Assets.aEnv);
  await initDependencies();
  runApp(const MovieDB());
}
