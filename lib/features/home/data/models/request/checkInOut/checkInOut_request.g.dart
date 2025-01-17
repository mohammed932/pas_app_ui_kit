// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkInOut_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckInOutRequest _$CheckInOutRequestFromJson(Map<String, dynamic> json) =>
    CheckInOutRequest(
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
    );

Map<String, dynamic> _$CheckInOutRequestToJson(CheckInOutRequest instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
