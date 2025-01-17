import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pas_app/features/authentication/data/models/request/login_request/login_request.dart';
import 'package:pas_app/features/authentication/data/models/response/login_response/login_response.model.dart';

import '../../../../core/network/erros/failures.dart';
import '../../../../core/utils/api_handler.dart';
import '../../domain/repositories/auth_repo.dart';
import '../datasources/base_auth_datasource.dart';

@Injectable(as: BaseAuthRepo)
class AuthRepoImpl implements BaseAuthRepo {
  BaseAuthDataSource datasource;
  AuthRepoImpl({required this.datasource});

  @override
  Future<Either<Failure, LoginResponseModel>> login(
      {required LoginRequest request}) async {
    return ApiHandler.callApi<LoginResponseModel>(
      () => datasource.login(request: request),
    );
  }
}
