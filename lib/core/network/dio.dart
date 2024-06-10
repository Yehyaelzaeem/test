import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'apis.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio();

  static String? token;
  static String? langauge;
  static Locale? currentLocale = WidgetsBinding.instance!.window.locale;

  static _getToken() async{
    if (token == null) {

      if(null !=token) {
        dio.options.headers.addAll(<String, dynamic>{
          'Authorization': 'Bearer $token',
          'Accept-Language': ' ${currentLocale!}'});
      }

    }
  }
  static init() {
    _getToken();
    dio = Dio(
      BaseOptions(
          baseUrl: AppApis.baseUrl,
          receiveDataWhenStatusError: true,
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $token',
          }),);
  }


  static Future<Response<dynamic>> postData({required String url,FormData? dataOption,  Map<String, dynamic>? data,dynamic dataEncode, Map<String, dynamic>? query,String? token,String? language}) async
  {
    dio.options.headers = <String,dynamic >{
      'Authorization':
      'Bearer $token'
    };
    return dio.post(url, data:dataEncode!=null?dataEncode: data??dataOption, queryParameters: query);
  }


  static Future<Response> putData({required String url, required Map<String, dynamic> data, Map<String, dynamic>? query,}) async
  {
    return dio.put(url, data: data, queryParameters: query);
  }
  static Future<Response> deleteData({required String url, Map<String, dynamic>? query,}) async
  {

    return dio.delete(url, queryParameters: query);
  }



  static Future<dynamic> getData({required String url, Map<String, dynamic>? query,String?token, String? language}) async
  {
    dio.options.headers = <String, dynamic>{
      // 'Accept-Language': '${AuthCubit.get(NavigationManager.navigationKey.currentContext!).localeLanguage.toString()}'??'en','x-api-key':'SIv5q09xLI689LNoALEh2D4Af/TsFkoypEMd/2XdtvGPfKHmU6HENZuuBgaBQKXM',
      'Authorization':
      'Bearer $token'};
    return dio.get(url, queryParameters: query);
  }


}
