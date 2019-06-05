import 'package:fish_redux/fish_redux.dart';

class FriendsState implements Cloneable<FriendsState> {

  @override
  FriendsState clone() {
    return FriendsState();
  }
}

FriendsState initState(Map<String, dynamic> args) {
  return FriendsState();
}
