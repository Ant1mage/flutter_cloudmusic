import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<DiscoverState> buildReducer() {
  return asReducer(
    <Object, Reducer<DiscoverState>>{
      DiscoverAction.loadBannerList: _loadBannerList,
    },
  );
}

DiscoverState _loadBannerList(DiscoverState state, Action action) {
  final DiscoverState newState = state.clone();
  newState.bannerList = action.payload;
  return newState;
}
