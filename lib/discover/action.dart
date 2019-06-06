import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_cloudmusic/discover/model/recommend_list_model.dart';

//TODO replace with your own action
enum DiscoverAction {
  loadBannerList,
  loadRecommendList
}

class DiscoverActionCreator {
  static Action loadBannerList(List<String> bannerList) {
    return Action(
        DiscoverAction.loadBannerList,
        payload: bannerList
    );
  }

  static Action loadRecommendList(List<RecommendList> model) {
    return Action(
        DiscoverAction.loadRecommendList,
        payload: model
    );
  }
}
