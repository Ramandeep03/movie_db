import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:movie_db/core/constants/keys.dart';
import 'env_config.dart';

class Env {
  static final EnvConfig config = EnvConfig(
    baseUrl: dotenv.env[Keys.baseURLCap] ?? '',
    apiKey: dotenv.env[Keys.apiKeyCap] ?? '',
  );
}
