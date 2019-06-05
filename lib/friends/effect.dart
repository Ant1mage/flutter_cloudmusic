import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<FriendsState> buildEffect() {
  return combineEffects(<Object, Effect<FriendsState>>{
    FriendsAction.action: _onAction,
  });
}

void _onAction(Action action, Context<FriendsState> ctx) {
}
