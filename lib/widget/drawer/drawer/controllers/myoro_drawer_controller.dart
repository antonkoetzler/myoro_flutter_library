import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ValueNotifier] for the drawer of a [MyoroScreen].
class MyoroDrawerController extends ChangeNotifier implements MyoroDrawerInterface {
  final state = MyoroDrawerState();

  @override
  void openDrawer(BuildContext context, {bool isEndDrawer = false, required MyoroDrawer drawer}) {
    if (state.drawer == drawer) return;
    state.drawer = drawer;
    state.isEndDrawer = isEndDrawer;
    !state.isEndDrawer ? state.scaffoldKey.currentState?.openDrawer() : state.scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  void closeDrawer(BuildContext context) {
    !state.isEndDrawer ? Scaffold.of(context).closeDrawer() : Scaffold.of(context).closeEndDrawer();
  }
}
