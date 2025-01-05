import '../models/request/checkInOut/checkInOut_request.dart';
import '../models/response/checkInOut/checkInOut_response.dart';

abstract class BaseCheckInOutDataSource {
  Future<CheckInOutResponseModel> checkInOut({
    required CheckInOutRequest request,
  });
}
