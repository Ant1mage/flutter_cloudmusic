import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';
import 'package:flutter_cloudmusic/utils/network/api.dart';

Effect<DiscoverState> buildEffect() {
  return combineEffects(<Object, Effect<DiscoverState>>{
    Lifecycle.initState: _initStateEffect,
  });
}


void _initStateEffect(Action action, Context context) async {
  // Banner List
  context.dispatch(DiscoverActionCreator.loadBannerList(await fetchBanner()));
  // Recommend List
  context.dispatch(DiscoverActionCreator.loadRecommendList(await fetchRecommendList()));
}

