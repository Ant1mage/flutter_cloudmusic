import 'package:fish_redux/fish_redux.dart';

class DiscoverState implements Cloneable<DiscoverState> {

  List<String> bannerList;

  @override
  DiscoverState clone() {
    return DiscoverState();
  }
}

DiscoverState initState(Map<String, dynamic> args) {
  DiscoverState state = DiscoverState();
  state.bannerList = [];
  return state;
}
