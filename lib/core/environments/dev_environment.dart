import 'package:pas_app/core/environments/base_environment.dart';

class DevEnvironment implements BaseEnvironment {
  @override
  String get baseUrl => "https://sservicesdev.valu.live";
}
