import './main.dart' as app;

import 'core/environments/prod_environment.dart';

main() {
  app.main(environment: ProdEnvironment());
}
