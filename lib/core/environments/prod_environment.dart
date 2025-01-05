import 'base_environment.dart';

class ProdEnvironment implements BaseEnvironment {
  @override
  String get baseUrl => "https://slsservicesprd.valu.com.eg";
}
