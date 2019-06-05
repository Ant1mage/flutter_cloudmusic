import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FriendsState> buildReducer() {
  return asReducer(
    <Object, Reducer<FriendsState>>{
      FriendsAction.action: _onAction,
    },
  );
}

FriendsState _onAction(FriendsState state, Action action) {
  final FriendsState newState = state.clone();
  return newState;
}
