
import 'package:dio/dio.dart';
import 'package:flutter_cloudmusic/base/net_config.dart';

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
          receiveTimeout: NetConfig.receiveTimeout);
//      ..interceptors.add(HeaderInterceptor());
//      ..interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
  }

  //get
  Future get(String url, {Map<String, dynamic> params}) async {
    var response = await dio.get(url, queryParameters: params);
    return response.data;
  }
  //post
  Future post(String url, Map<String, dynamic> params) async {
    var response = await dio.post(url, data: params);
    return response.data;
  }
}

class HeaderInterceptor extends Interceptor {
  @override
  onRequest(RequestOptions options) {
//    final token = AppConfig.userTools.getUserToken();
//    if (token != null && token.length > 0) {
//      options.headers.putIfAbsent('Authorization', () => 'Bearer' + ' ' + token);
//    }
//    if (options.uri.path.indexOf('api/user/advice/Imgs') > 0 || options.uri.path.indexOf('api/user/uploadUserHeader') > 0) { // 上传图片
//      options.headers.putIfAbsent('Content-Type', () => 'multipart/form-data');
//      print('上传图片');
//    } else {
//    }
//    options.headers.putIfAbsent('Content-Type', () => 'application/json;charset=UTF-8');

    return super.onRequest(options);
  }
}

