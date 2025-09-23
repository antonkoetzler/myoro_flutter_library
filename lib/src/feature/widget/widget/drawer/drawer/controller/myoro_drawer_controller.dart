import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ValueNotifier] for the drawer of a [MyoroScreen].
class MyoroDrawerController {
  /// Key of the [Scaffold] within [MyoroScreen] to control the drawer.
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  /// Distinguishes whether or [_drawer] is an end drawer or not.
  ///
  /// Used in [closeDrawer] to not have to call [ScaffoldState.closeDrawer]
  /// & [ScaffoldState.closeEndDrawer].
  final _isEndDrawerNotifier = ValueNotifier(false);
  ValueNotifier<bool> get isEndDrawerNotifier => _isEndDrawerNotifier;
  bool get isEndDrawer => _isEndDrawerNotifier.value;
  set isEndDrawer(bool isEndDrawer) => _isEndDrawerNotifier.value = isEndDrawer;

  /// The drawer. Is displaying if not null, otherwise the is hidden.
  MyoroDrawer? drawer;

  /// Dispose function.
  void dispose() {
    _isEndDrawerNotifier.dispose();
  }

  /// Opens the drawer.
  void openDrawer(BuildContext context, {bool isEndDrawer = false, required MyoroDrawer drawer}) {
    if (this.drawer == drawer) return;
    this.isEndDrawer = isEndDrawer;
    this.drawer = drawer;
    isEndDrawer ? _scaffoldKey.currentState?.openEndDrawer() : _scaffoldKey.currentState?.openDrawer();
  }

  /// Closes the drawer.
  void closeDrawer(BuildContext context) {
    !isEndDrawer ? Scaffold.of(context).closeDrawer() : Scaffold.of(context).closeEndDrawer();
  }
}
