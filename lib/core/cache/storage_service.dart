import 'dart:io';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:pas_app/core/utils/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class StorageService {
  late final SharedPreferences _instance;
  SharedPreferences get instance => _instance;
  StorageService(this._instance);

  clear() => _instance.clear();

  void set({required String key, required dynamic value}) {
    if (value is int) {
      _instance.setInt(key, value);
    } else if (value is String) {
      _instance.setString(key, value);
    } else if (value is bool) {
      _instance.setBool(key, value);
    } else {
      throw "undefined type";
    }
  }

  dynamic get({required String key}) {
    dynamic storedValue = _instance.get(key);
    return storedValue;
  }

  Locale get locale {
    try {
      String? locale = _instance.get(StorageKeys.locale.name) as String?;
      if (locale != null && locale.split('_')[0] == Language.ar.name) {
        return const Locale('ar', 'EG');
      } else {
        return const Locale('en', 'US');
      }
    } catch (e) {
      ;
      debugPrint("locale Error $e");
      String languageCode = Platform.localeName.split('_')[0];
      String countryCode = Platform.localeName.split('_')[1];
      return Locale(languageCode, countryCode);
    }
  }
}
