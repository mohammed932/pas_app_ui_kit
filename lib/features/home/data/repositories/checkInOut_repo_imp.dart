import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:pas_app/core/network/erros/failures.dart';

import 'package:pas_app/features/home/data/models/request/checkInOut/checkInOut_request.dart';

import 'package:pas_app/features/home/data/models/response/checkInOut/checkInOut_response.dart';

import '../../../../core/utils/api_handler.dart';
import '../../domain/repositories/checkInOut_repo.dart';
import '../datasources/checkInOut_datasource.dart';

@Injectable(as: BaseCheckInOutRepo)
class CheckinOutRepoImp implements BaseCheckInOutRepo {
  final BaseCheckInOutDataSource datasource;
  CheckinOutRepoImp({required this.datasource});
  @override
  Future<Either<Failure, CheckInOutResponseModel>> checkInOut(
      {required CheckInOutRequest request}) {
    return ApiHandler.callApi<CheckInOutResponseModel>(
      () => datasource.checkInOut(request: request),
    );
  }
}
