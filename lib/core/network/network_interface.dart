import 'dart:io';

import 'package:dio/dio.dart';

abstract class BaseNetwork {
  Future<Map<String, dynamic>> get(
    String endPoint, {
    Map<String, dynamic>? queryParameters,
  });
  Future<Map<String, dynamic>> post(
    String endPoint, {
    Map<String, dynamic>? data,
    ProgressCallback? progressCallback,
  });
  Future<Map<String, dynamic>> delete(String endPoint, int id);
  Future<Map<String, dynamic>> update(
    String endPoint, {
    Map<String, dynamic>? data,
  });
  Future<Map<String, dynamic>> uploadImages(
    String endPoint,
    Map<String, File> data,
  );
}
