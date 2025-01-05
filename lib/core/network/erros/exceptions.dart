import 'package:pas_app/translation/locale_keys.g.dart';

abstract class AppException implements Exception {
  final String? msg;
  const AppException([this.msg]);
}

class ServerException implements AppException {
  const ServerException([this.msg = LocaleKeys.server_ex_msg]);
  @override
  final String? msg;
}

class UnAuthorizeException implements AppException {
  const UnAuthorizeException([this.msg = LocaleKeys.un_auth_msg]);
  @override
  final String? msg;
}

class BadEntitesException implements AppException {
  const BadEntitesException([this.msg = LocaleKeys.bad_inputs_message]);
  @override
  final String? msg;
}

class NotFoundException implements AppException {
  const NotFoundException([this.msg = LocaleKeys.not_found_message]);
  @override
  final String? msg;
}

class UnCaughtException implements AppException {
  const UnCaughtException([this.msg = LocaleKeys.un_caught_message]);
  @override
  final String? msg;
}

class ConnectivityException implements AppException {
  const ConnectivityException([this.msg = LocaleKeys.no_connection_message]);
  @override
  final String? msg;
}

class UnSupportedJsonFormat implements AppException {
  const UnSupportedJsonFormat([this.msg]);
  @override
  final String? msg;
}

class UnprocessableContent implements AppException {
  const UnprocessableContent([this.msg]);
  @override
  final String? msg;
}
