import 'package:freezed_annotation/freezed_annotation.dart';
part 'checkInOut_request.g.dart';

@JsonSerializable(explicitToJson: true)
class CheckInOutRequest {
  final bool isCheckIn;
  final String lat;
  final String long;
  CheckInOutRequest({
    required this.isCheckIn,
    required this.lat,
    required this.long,
  });
  Map<String, dynamic> toJson() => _$CheckInOutRequestToJson(this);
}
