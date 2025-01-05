import 'package:freezed_annotation/freezed_annotation.dart';
part 'error_payload.model.freezed.dart';
part 'error_payload.model.g.dart';

@freezed
class ErrorPayload with _$ErrorPayload {
  factory ErrorPayload({
    String? title,
    String? description,
  }) = _ErrorPayload;

  factory ErrorPayload.fromJson(Map<String, Object?> json) =>
      _$ErrorPayloadFromJson(json);
}
