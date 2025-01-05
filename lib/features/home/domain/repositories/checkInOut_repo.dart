import 'package:dartz/dartz.dart';

import '../../../../core/network/erros/failures.dart';
import '../../data/models/request/checkInOut/checkInOut_request.dart';
import '../../data/models/response/checkInOut/checkInOut_response.dart';


abstract class BaseCheckInOutRepo {
  Future<Either<Failure, CheckInOutResponseModel>> checkInOut({
    required CheckInOutRequest request,
  });
}
