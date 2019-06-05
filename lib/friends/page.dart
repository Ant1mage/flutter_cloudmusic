import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class FriendsPage extends Page<FriendsState, Map<String, dynamic>> {
  FriendsPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FriendsState>(
                adapter: null,
                slots: <String, Dependent<FriendsState>>{
                }),
            middleware: <Middleware<FriendsState>>[
            ],);

}
