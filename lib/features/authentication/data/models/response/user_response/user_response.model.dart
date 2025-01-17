import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_response.model.freezed.dart';
part 'user_response.model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String name,
    @JsonKey(name: 'is_manager') required bool isManager,
    @JsonKey(name: 'image_1920') String? image1920,
    @JsonKey(name: 'resource_id') required int resourceId,
    @JsonKey(name: 'company_id') required int companyId,
    @JsonKey(name: 'company_name') required String companyName,
    @JsonKey(name: 'resource_calendar_id') required int resourceCalendarId,
    @JsonKey(name: 'department_id') required int departmentId,
    @JsonKey(name: 'department_name') required String departmentName,
    @JsonKey(name: 'job_id') int? jobId,
    @JsonKey(name: 'job_name') String? jobName,
    @JsonKey(name: 'job_title') String? jobTitle,
    @JsonKey(name: 'address_id') required int addressId,
    @JsonKey(name: 'address_name') required String addressName,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'user_name') required String userName,
    @JsonKey(name: 'country_id') int? countryId,
    @JsonKey(name: 'country_name') String? countryName,
    String? gender,
    String? marital,
    @JsonKey(name: 'work_phone') String? workPhone,
    @JsonKey(name: 'mobile_phone') String? mobilePhone,
    @JsonKey(name: 'work_email') String? workEmail,
    @JsonKey(name: 'identification_id') String? identificationId,
    @JsonKey(name: 'passport_id') String? passportId,
    @JsonKey(name: 'bank_account_id') String? bankAccountId,
    @JsonKey(name: 'permit_no') String? permitNo,
    @JsonKey(name: 'visa_no') String? visaNo,
    @JsonKey(name: 'visa_expire') String? visaExpire,
    @JsonKey(name: 'work_permit_expiration_date')
    String? workPermitExpirationDate,
    @JsonKey(name: 'has_work_permit') bool? hasWorkPermit,
    @JsonKey(name: 'work_permit_name') String? workPermitName,
    @JsonKey(name: 'additional_note') String? additionalNote,
    String? certificate,
    String? vehicle,
    @JsonKey(name: 'contract_ids') List<dynamic>? contractIds,
    @JsonKey(name: 'contract_id') String? contractId,
    @JsonKey(name: 'contract_name') String? contractName,
    @JsonKey(name: 'first_contract_date') String? firstContractDate,
    @JsonKey(name: 'skill_ids') List<dynamic>? skillIds,
    @JsonKey(name: 'first_hiring_date') String? firstHiringDate,
    @JsonKey(name: 'job_entry_date') String? jobEntryDate,
    @JsonKey(name: 'employee_no') String? employeeNo,
    @JsonKey(name: 'check_saudi') required bool checkSaudi,
    @JsonKey(name: 'city_id') int? cityId,
    @JsonKey(name: 'city_name') String? cityName,
    @JsonKey(name: 'address_region') String? addressRegion,
    String? street,
    @JsonKey(name: 'building_number') String? buildingNumber,
    @JsonKey(name: 'postal_code') String? postalCode,
    @JsonKey(name: 'arabic_name') String? arabicName,
    String? religion,
    @JsonKey(name: 'blood_type') String? bloodType,
    int? age,
  }) = _User;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
