import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_cloudmusic/discover/model/recommend_list_model.dart';

import 'action.dart';
import 'state.dart';

Reducer<DiscoverState> buildReducer() {
  return asReducer(
    <Object, Reducer<DiscoverState>>{
      DiscoverAction.loadBannerList: _loadBannerList,
      DiscoverAction.loadRecommendList: _loadRecommendList
    },
  );
}

DiscoverState _loadBannerList(DiscoverState state, Action action) {
  List<String> list = action.payload;
  final DiscoverState newState = state.clone();
  newState.bannerList = list;
  return newState;
}

DiscoverState _loadRecommendList(DiscoverState state, Action action) {
  List<RecommendList> list = action.payload;
  final DiscoverState newState = state.clone();
  newState.recommendList = list;
  return newState;
}