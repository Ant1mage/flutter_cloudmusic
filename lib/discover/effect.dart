import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_cloudmusic/utils/network/http_until.dart';
import 'action.dart';
import 'model/banner_model.dart';
import 'state.dart';

Effect<DiscoverState> buildEffect() {
  return combineEffects(<Object, Effect<DiscoverState>>{
    Lifecycle.initState: _initStateEffect
  });
}


void _initStateEffect(Action action, Context context) async {
  context.dispatch(DiscoverActionCreator.loadBannerList(await fetchBanner()));
}


Future<List<String>> fetchBanner() async {
  List<String> list = [];
  var response = await HttpUtil.getInstance().get('/banner?type=2', params: null);
  BannerModel model = BannerModel.fromJson(response);
  model.banners.forEach((b){
    list.add(b.pic);
  });
  println(list);
  return list;
}