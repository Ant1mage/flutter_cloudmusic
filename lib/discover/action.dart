import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum DiscoverAction {
  loadBannerList
}

class DiscoverActionCreator {
  static Action loadBannerList(List<String> bannerList) {
    return Action(
        DiscoverAction.loadBannerList,
        payload: bannerList
    );
  }
}
