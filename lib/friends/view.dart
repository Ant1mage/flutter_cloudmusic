import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(FriendsState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    child: Center(
      child: Text('朋友'),
    ),
  );
}
