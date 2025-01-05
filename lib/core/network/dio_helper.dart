import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:network_logger/network_logger.dart';
import 'package:pas_app/core/cache/secure_storage.dart';
import 'package:pas_app/core/cache/storage_service.dart';
import 'package:pas_app/core/injection/injection.dart';
import 'package:pas_app/core/network/api_strings.dart';
import 'package:pas_app/core/network/erros/exceptions.dart';

import 'network_interface.dart';

@LazySingleton(as: BaseNetwork)
class DioHelper implements BaseNetwork {
  final Dio dio = Dio();

  DioHelper() {
    dio.options.baseUrl = ApiStrings.baseUrl;
    dio.options.receiveDataWhenStatusError = true;
    dio.options.connectTimeout = const Duration(seconds: 60);
    dio.options.receiveTimeout = const Duration(seconds: 60);

    dio.interceptors.add(DioNetworkLogger());
  }
  _buildHeader() async {
    String? token = await getIt.get<SecureStorage>().getValue(key: 'token');
    String langCode = getIt.get<StorageService>().locale.languageCode;
    dio.options.headers = {
      if (token != null) "Authorization": "Bearer $token",
      "LanguageCode": langCode,
    };
  }

  @override
  Future<Map<String, dynamic>> get(String endPoint,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      await _buildHeader();
      final response = await dio.get(ApiStrings.baseUrl + endPoint,
          queryParameters: queryParameters);
      return jsonDecode(response.data);
    } on DioException catch (error) {
      throw await networkExceptions(error);
    }
  }

  @override
  Future<Map<String, dynamic>> delete(String endPoint, int id) async {
    try {
      await _buildHeader();
      final response = await dio.delete("${ApiStrings.baseUrl}$endPoint$id/");

      return jsonDecode(response.data);
    } on DioException catch (error) {
      throw await networkExceptions(error);
    }
  }

  @override
  Future<Map<String, dynamic>> post(String endPoint,
      {Map<String, dynamic>? data, ProgressCallback? progressCallback}) async {
    try {
      await _buildHeader();
      final response = await dio.post(endPoint,
          data: data, onReceiveProgress: progressCallback);

      return jsonDecode(response.data);
    } on DioException catch (error) {
      throw await networkExceptions(error);
    }
  }

  @override
  Future<Map<String, dynamic>> update(String endPoint,
      {Map<String, dynamic>? data}) async {
    try {
      await _buildHeader();
      final response = await dio.patch(endPoint, data: data);

      return jsonDecode(response.data);
    } on DioException catch (error) {
      throw await networkExceptions(error);
    }
  }

  @override
  Future<Map<String, dynamic>> uploadImages(
      String endPoint, Map<String, File> data) async {
    try {
      await _buildHeader();
      FormData formData = FormData.fromMap(data);
      formData.files.add(MapEntry(data.entries.first.key,
          await MultipartFile.fromFile(data.entries.first.value.path)));
      final response = await dio.post(endPoint, data: formData);

      return jsonDecode(response.data);
    } on DioException catch (error) {
      throw await networkExceptions(error);
    }
  }

  Future networkExceptions(DioException exception) async {
    final bool hasConnection = await InternetConnectionChecker().hasConnection;
    if (!hasConnection) throw const ConnectivityException();
    if (exception.type == DioExceptionType.receiveTimeout ||
        exception.type == DioExceptionType.connectionTimeout ||
        exception.type == DioExceptionType.sendTimeout) {
      throw const ConnectivityException();
    }
    if (exception.response?.statusCode == 429) {
      // BaseErrorResponseModel erro =
      //     BaseErrorResponseModel.fromJson(exception.response?.data);
      // debugPrint("exception.response ${exception.response?.data}");
      // throw erro;
    }
    if (exception.response?.statusCode == 401) {
      throw const UnAuthorizeException();
    } else if (exception.response?.statusCode == 500) {
      throw const ServerException();
    } else if (exception.response?.statusCode == 422 ||
        exception.type == DioExceptionType.badResponse) {
      throw UnprocessableContent(errorMsg(exception.response));
    } else if (exception.response?.statusCode == 404) {
      throw const NotFoundException();
    } else if (exception.response?.statusCode == 400) {
      throw UnprocessableContent(errorMsg(exception.response));
    } else if (exception.response?.statusCode == 403) {
      throw UnprocessableContent(errorMsg(exception.response));
    } else {
      debugPrint("UnCaughtException ${exception.error}");
      throw const UnCaughtException();
    }
  }

  static String? errorMsg(Response? response) {
    if (response?.data['responseException']['exceptionMessage']['errors'] !=
        null) {
      var errors =
          response?.data['responseException']['exceptionMessage']['errors'];

      if (errors != null) {
        if (errors is String) return errors.toString();
        if (errors is List) {
          return errors.first.toString();
        }
        if (errors is Map) {
          if (errors.entries.first.value is List) {
            return errors.entries.first.value.toList()[0];
          } else if (errors.entries.first.value is String) {
            return errors.entries.first.value;
          }
        }
      }
    } else if (response?.data['error'] != null) {
      return response?.data['error'];
    } else if (response?.statusMessage != null) {
      return response?.statusMessage;
    }
    return null;
  }
}
