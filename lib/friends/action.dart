import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FriendsAction { action }

class FriendsActionCreator {
  static Action onAction() {
    return const Action(FriendsAction.action);
  }
}
