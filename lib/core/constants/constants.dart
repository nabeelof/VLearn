// ignore_for_file: constant_identifier_names, non_constant_identifier_names
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Constants {}

class Endpoints {
  static String BASE_URL = 'https://vlearn.vroad.co/public';
  static String DOMAIN_URL = 'https://vlearn.vroad.co';
  static String API = '$BASE_URL/api';
  static String HOME = '$API/home';
  static String COURSES = '$API/courses';
}

///
/// The [ErrorCode] enum is responsible of stating all the possible issues that can be retrieved from the API
///
/// Values:
///
/// * [ErrorCode.SERVER_ERROR] indicates that the server returned an undefined error
/// * [ErrorCode.WRONG_INPUT] returned when the server returns error 422 UnProcessable Entity
/// * [ErrorCode.NO_INTERNET_CONNECTION] returned when the device is not connected to a network
/// * [ErrorCode.FORBIDDEN] returned when the server returns 403 Forbidden
/// * [ErrorCode.TIMEOUT] returned when the request has timed out
/// * [ErrorCode.UNAUTHENTICATED] returned when the request returns that the user is unauthenticated
///

enum ErrorCode {
  SERVER_ERROR,
  UNAUTHENTICATED,
  TIMEOUT,
  NO_INTERNET_CONNECTION,
  WRONG_INPUT,
  PARSE_ERROR,
  FORBIDDEN,
  NOT_VERIFIED,
  REGISTERED_EMAIL,
  IDENTIFIER_TAKEN,
  CACHE_ERROR,
  BAD_REQUEST
}

///
/// [GetOptions] class is for gathering all the options for the [Dio] package in one class
///
class GetOptions {
  static Options options = Options();

  static Options getOptionsWithToken(String token,
      {String? language, bool isUploadFile = false}) {
    if (token.isNotEmpty) {
      options.headers = {
        'Content-Type': 'application/json',
        'Accept': isUploadFile ? 'multipart/form-data' : 'application/json',
        'Authorization': 'Bearer $token',
        'Accept-Language':
            language ?? "en",
        'locale': language ?? "en",
      };
      // log('${LoggerColors.green} Bearer $token');
      options.validateStatus = (status) => status! < 500;
    } else {
      options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Accept-Language':
            language ?? "en",
        'locale': language ?? "en",
      };
      options.validateStatus = (status) => status! < 500;
    }
    return options;
  }
}

class LoggerColors {
  static const String red = "\x1B[31m";
  static const String black = "\x1B[30m";
  static const String white = "\x1B[37m";
  static const String blue = "\x1B[34m";
  static const String green = "\x1B[32m";
  static const String yellow = "\x1B[33m";
  static const String cyan = "\x1B[36m";
  static const String magenta = "\x1B[35m";
}

const PAGE_LENGTH = 10;

const PRICE_DECIMAL_DIGITS = 2;
const APP_CURRENCY = AppCurrency.SYP;
String APP_PLATFORM = Platform.isIOS ? "IOS": "Android";

enum AppCurrency {
  KD,
  SYP
}

bool isPriceZero(String? price){
  return (double.tryParse(price ?? '0') ?? 0) == 0;
}

String getPriceFormatted(String? price){
  if(isPriceZero(price)){
    return "Free";
  }
  if(APP_CURRENCY == AppCurrency.SYP){
    var formatter = NumberFormat('#,###,###');
    String priceFormatted =  formatter.format(double.tryParse(price ?? "0") ?? 0);
    return "$priceFormatted ${APP_CURRENCY.name.tr}";
  } else {
    String priceFormatted =  (double.tryParse(price ?? "0") ?? 0).toStringAsFixed(PRICE_DECIMAL_DIGITS);
    return "$priceFormatted ${APP_CURRENCY.name.tr}";
  }
}

String doubleToStringFormatted(double? number){
  double value = number ?? 0;
  String formattedString;
  if (value % 1 == 0) {
    formattedString = value.toInt().toString();
  } else {
    formattedString = value.toStringAsFixed(value.toString().split('.')[1].length);
  }
  return formattedString;
}

String formatDuration(String durationString) {
  List<String> parts = durationString.split(':');
  int hours = int.parse(parts[0]);
  int minutes = int.parse(parts[1]);
  int seconds = int.parse(parts[2]);

  if (hours > 0) {
    return '$hours${'h'} '
        '$minutes${'m'} '
        '$seconds${'s'}';
  } else if (minutes > 0) {
    return '$minutes${'m'} '
        '$seconds${'s'}';
  } else {
    return '$seconds${'s'}';
  }
}
