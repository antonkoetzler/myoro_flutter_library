import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroDrawerController].
class MyoroDrawerState {
  /// Key of the [Scaffold] within [MyoroScreen] to control the drawer.
  final scaffoldKey = GlobalKey<ScaffoldState>();

  /// Distinguishes whether or [_drawer] is an end drawer or not.
  ///
  /// Used in [closeDrawer] to not have to call [ScaffoldState.closeDrawer]
  /// & [ScaffoldState.closeEndDrawer].
  bool isEndDrawer = false;

  /// The drawer. Is displaying if not null, otherwise the is hidden.
  MyoroDrawer? drawer;
}
