import 'package:dartz/dartz.dart';
import 'package:pas_app/features/authentication/data/models/request/login_request/login_request.dart';
import 'package:pas_app/features/authentication/data/models/response/login_response/login_response.model.dart';

import '../../../../core/network/erros/failures.dart';

abstract class BaseAuthRepo {
  Future<Either<Failure, LoginResponseModel>> login({
    required LoginRequest request,
  });
}
