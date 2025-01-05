import 'package:injectable/injectable.dart';
import 'package:pas_app/core/environments/base_environment.dart';

@lazySingleton
class AppEnv {
  late BaseEnvironment _environment;
  BaseEnvironment get environment => _environment;
  updateEnv({required BaseEnvironment env}) => _environment = env;
}
