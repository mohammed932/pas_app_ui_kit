import 'package:freezed_annotation/freezed_annotation.dart';
part 'checkInOut_request.g.dart';

@JsonSerializable(explicitToJson: true)
class CheckInOutRequest {
  final String latitude;
  final String longitude;
  CheckInOutRequest({
    required this.latitude,
    required this.longitude,
  });
  Map<String, dynamic> toJson() => _$CheckInOutRequestToJson(this);
}
