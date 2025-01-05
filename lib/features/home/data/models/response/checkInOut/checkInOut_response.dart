import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkInOut_response.freezed.dart';
part 'checkInOut_response.g.dart';

@freezed
class CheckInOutResponseModel with _$CheckInOutResponseModel {
  const CheckInOutResponseModel._();
  factory CheckInOutResponseModel({
    String? message,
  }) = _CheckInOutResponseModel;

  factory CheckInOutResponseModel.fromJson(Map<String, Object?> json) =>
      _$CheckInOutResponseModelFromJson(json);
}
