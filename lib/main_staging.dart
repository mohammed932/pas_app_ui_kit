import './main.dart' as app;
import 'core/environments/staging_environment.dart';

main() {
  app.main(environment: StagingEnvironment());
}
