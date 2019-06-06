import 'package:flutter_cloudmusic/discover/model/banner_model.dart';
import 'package:flutter_cloudmusic/discover/model/recommend_list_model.dart';
import 'package:flutter_cloudmusic/utils/network/api_service.dart';
import 'package:rxdart/rxdart.dart';


Future<List<String>> fetchBanner() async {
  List<String> list = [];
  var response = await ApiService.instance.get('/banner?type=2', params: null);
  BannerModel model = BannerModel.fromJson(response);
  model.banners.forEach((b){
    list.add(b.pic);
  });
  return list;
}


Future<List<RecommendList>> fetchRecommendList() async {
  var response = await ApiService.instance.get('/personalized', params: null);
  RecommendListModel model = RecommendListModel.fromJson(response);
  List<RecommendList> list = model.recommendList.sublist(0,6);
  return list;
}