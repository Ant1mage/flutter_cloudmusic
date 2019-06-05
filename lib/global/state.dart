import 'package:fish_redux/fish_redux.dart';


class GlobalState implements Cloneable<GlobalState> {


  @override
  GlobalState clone() {
    return GlobalState();
  }
}

GlobalState initState(Map<String, dynamic> args) {
  GlobalState state = GlobalState();
  return state;
}
