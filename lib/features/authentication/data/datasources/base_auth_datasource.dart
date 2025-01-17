import 'package:pas_app/features/authentication/data/models/request/login_request/login_request.dart';
import 'package:pas_app/features/authentication/data/models/response/login_response/login_response.model.dart';

abstract class BaseAuthDataSource {
  Future<LoginResponseModel> login({
    required LoginRequest request,
  });
}
