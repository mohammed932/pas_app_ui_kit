import 'package:injectable/injectable.dart';
import 'package:pas_app/features/home/data/models/request/checkInOut/checkInOut_request.dart';

import 'package:pas_app/features/home/data/models/response/checkInOut/checkInOut_response.dart';

import 'checkInOut_datasource.dart';

@Injectable(as: BaseCheckInOutDataSource)
class BaseCheckInOutDataSourceImpl implements BaseCheckInOutDataSource {
  @override
  Future<CheckInOutResponseModel> checkInOut(
      {required CheckInOutRequest request}) async {
    await Future.delayed(const Duration(seconds: 1));
    var response = {
      "message": "checkInOut success",
    };
    return CheckInOutResponseModel.fromJson(response);
  }
}
