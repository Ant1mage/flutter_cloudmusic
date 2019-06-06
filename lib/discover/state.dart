import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_cloudmusic/discover/model/recommend_list_model.dart';

class DiscoverState implements Cloneable<DiscoverState> {

  List<String> bannerList = [];
  List<RecommendList> recommendList;

  @override
  DiscoverState clone() {
    return DiscoverState()
      ..bannerList = bannerList
      ..recommendList;
  }
}

DiscoverState initState(Map<String, dynamic> args) {
  DiscoverState state = DiscoverState();
  state..bannerList = [];
  state..recommendList = [];
  return state;
}
