import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class GlobalPage extends Page<GlobalState, Map<String, dynamic>> {
  GlobalPage()
      : super(
    initState: initState,
    effect: buildEffect(),
    reducer: buildReducer(),
    view: buildView,
    dependencies: Dependencies<GlobalState>(
        adapter: null,
        slots: <String, Dependent<GlobalState>>{
        }),
    middleware: <Middleware<GlobalState>>[
    ],);

}
