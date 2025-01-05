// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkInOut_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckInOutRequest _$CheckInOutRequestFromJson(Map<String, dynamic> json) =>
    CheckInOutRequest(
      isCheckIn: json['isCheckIn'] as bool,
      lat: json['lat'] as String,
      long: json['long'] as String,
    );

Map<String, dynamic> _$CheckInOutRequestToJson(CheckInOutRequest instance) =>
    <String, dynamic>{
      'isCheckIn': instance.isCheckIn,
      'lat': instance.lat,
      'long': instance.long,
    };
