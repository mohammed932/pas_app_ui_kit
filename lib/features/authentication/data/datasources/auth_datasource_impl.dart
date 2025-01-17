import 'package:injectable/injectable.dart';
import 'package:pas_app/features/authentication/data/datasources/base_auth_datasource.dart';
import 'package:pas_app/features/authentication/data/models/request/login_request/login_request.dart';
import 'package:pas_app/features/authentication/data/models/response/login_response/login_response.model.dart';

@Injectable(as: BaseAuthDataSource)
class AuthDataSourceImpl implements BaseAuthDataSource {
  AuthDataSourceImpl();

  @override
  Future<LoginResponseModel> login({required LoginRequest request}) async {
    try {
      final Map<String, dynamic> response = {
        "data": {
          "token":
              "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3Mzc1NTc1MjIsImlhdCI6MTczNjk1MjcyMiwidXNlciI6MiwibGduIjoiYWRtaW4ifQ.Ltgkihim2GSoICKtMlMKTi-KseoOW_l0k6vamwj4FIM",
          "two_factor": false,
          "user": {
            "id": 1,
            "name": "Administrator",
            "is_manager": false,
            "image_1920":
                "https://mobile.pas-sa.com/web/image?model=hr.employee&id=1&field=image_1920",
            "resource_id": 1,
            "company_id": 1,
            "company_name": "My Company",
            "resource_calendar_id": 1,
            "department_id": 1,
            "department_name": "Administration",
            "job_id": null,
            "job_name": null,
            "job_title": null,
            "address_id": 1,
            "address_name": "My Company",
            "user_id": 2,
            "user_name": "Administrator",
            "country_id": null,
            "country_name": null,
            "gender": null,
            "marital": "single",
            "work_phone": null,
            "mobile_phone": null,
            "work_email": "admin@example.com",
            "identification_id": null,
            "passport_id": null,
            "bank_account_id": null,
            "permit_no": null,
            "visa_no": null,
            "visa_expire": "",
            "work_permit_expiration_date": "",
            "has_work_permit": null,
            "work_permit_name": "Administrator_work_permit",
            "additional_note": null,
            "certificate": "other",
            "vehicle": null,
            "contract_ids": [],
            "contract_id": null,
            "contract_name": null,
            "first_contract_date": "",
            "skill_ids": [],
            "first_hiring_date": "",
            "job_entry_date": "",
            "employee_no": null,
            "check_saudi": false,
            "city_id": null,
            "city_name": null,
            "address_region": null,
            "street": null,
            "building_number": null,
            "postal_code": null,
            "arabic_name": null,
            "religion": null,
            "blood_type": null,
            "age": null
          }
        }
      };
      final result = LoginResponseModel.fromJson(response);
      return result;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
