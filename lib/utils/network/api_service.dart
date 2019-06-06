import 'package:flutter_cloudmusic/utils/network/http_until.dart';

class ApiService {
  factory ApiService() => _getInstance();

  ApiService._internal();

  static ApiService get instance => _getInstance();
  static ApiService _instance;

  static ApiService _getInstance() {
    if (_instance == null) {
      _instance = new ApiService._internal();
    }
    return _instance;
  }

  //get
  Future get(String url, {Map<String, dynamic> params}) async {
    var response = await HttpUtil.getInstance().dio.get(url, queryParameters: params);
    return response.data;
  }
  //post
  Future post(String url, Map<String, dynamic> params) async {
    var response = await HttpUtil.getInstance().dio.post(url, data: params);
    return response.data;
  }


}