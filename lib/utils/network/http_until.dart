import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cloudmusic/base/net_config.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HttpUtil {
  static HttpUtil instance;
  Dio dio;
  BaseOptions options;

  static HttpUtil getInstance() {
    print('getInstance');
    if (instance == null) {
      instance = new HttpUtil();
    }
    return instance;
  }
  HttpUtil() {
    dio = new Dio()
      ..options = BaseOptions(
          baseUrl: NetConfig.host,
          connectTimeout: NetConfig.connectTimeout,
          receiveTimeout: NetConfig.receiveTimeout)
      ..interceptors
          .add(InterceptorsWrapper(onRequest: (RequestOptions options) {
        print('request:url==>>>${options.path},pamars==>>>>${options.data}');
        return options; //continue
      }, onResponse: (Response response) {
        return response; // continue
      }, onError: (DioError e) {
        dispatchFailure(e);
        return e; //continue
      }))
      ..interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
  }
}

// Fixme: error 统一处理
dispatchFailure(dynamic e) {
  var msg = e.toString();
  if (e is DioError) {
    final resp = e.response;
    if (resp?.statusCode == 401) {

    }
  }
  print('error: ' + msg);
  Fluttertoast.showToast(msg: msg, gravity: ToastGravity.TOP, textColor: Colors.white, backgroundColor: Colors.red);
}
