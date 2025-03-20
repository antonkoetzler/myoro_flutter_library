import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ValueNotifier] for the drawer of a [MyoroScreen].
class MyoroDrawerController extends ChangeNotifier {
  /// Key of the [Scaffold] within [MyoroScreen] to control the drawer.
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  /// Distinguishes whether or [_drawer] is an end drawer or not.
  ///
  /// Used in [closeDrawer] to not have to call [ScaffoldState.closeDrawer]
  /// & [ScaffoldState.closeEndDrawer].
  bool _isEndDrawer = false;

  /// The drawer. Is displaying if not null, otherwise the is hidden.
  MyoroDrawer? _drawer;

  /// Opens the drawer.
  void openDrawer(
    BuildContext context, {
    bool isEndDrawer = false,
    required MyoroDrawer drawer,
  }) {
    if (_drawer == drawer) return;
    _drawer = drawer;
    _isEndDrawer = isEndDrawer;
    !_isEndDrawer
        ? _scaffoldKey.currentState?.openDrawer()
        : _scaffoldKey.currentState?.openEndDrawer();
  }

  /// Closes the drawer.
  void closeDrawer(BuildContext context) {
    !_isEndDrawer
        ? Scaffold.of(context).closeDrawer()
        : Scaffold.of(context).closeEndDrawer();
  }

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;
  bool get isEndDrawer => _isEndDrawer;
  MyoroDrawer? get drawer => _drawer;
}
