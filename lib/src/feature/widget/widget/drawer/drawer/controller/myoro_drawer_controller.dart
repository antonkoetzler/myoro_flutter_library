import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ValueNotifier] for the drawer of a [MyoroScreen].
class MyoroDrawerController {
  /// Key of the [Scaffold] within [MyoroScreen] to control the drawer.
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  /// Distinguishes whether or [_drawer] is an end drawer or not.
  ///
  /// Used in [closeDrawer] to not have to call [ScaffoldState.closeDrawer]
  /// & [ScaffoldState.closeEndDrawer].
  final _isEndDrawerController = ValueNotifier(false);

  /// [ValueNotifier] of the current [MyoroDrawer].
  final _selectedDrawerController = ValueNotifier<MyoroDrawer?>(null);

  /// Dispose function.
  void dispose() {
    _isEndDrawerController.dispose();
    _selectedDrawerController.dispose();
  }

  /// Opens the drawer.
  void openDrawer(BuildContext context, {bool isEndDrawer = false, required MyoroDrawer drawer}) {
    if (selectedDrawer == drawer && this.isEndDrawer != isEndDrawer) return;
    this.isEndDrawer = isEndDrawer;
    selectedDrawer = drawer;
    isEndDrawer ? _scaffoldKey.currentState?.openEndDrawer() : _scaffoldKey.currentState?.openDrawer();
  }

  /// Closes the drawer.
  void closeDrawer(BuildContext context) {
    !isEndDrawer ? Scaffold.of(context).closeDrawer() : Scaffold.of(context).closeEndDrawer();
  }

  /// [_scaffoldKey] getter.
  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  /// [_isEndDrawerController] getter.
  ValueNotifier<bool> get isEndDrawerController {
    return _isEndDrawerController;
  }

  /// Getter of [_isEndDrawerController]'s value.
  bool get isEndDrawer {
    return _isEndDrawerController.value;
  }

  /// [_selectedDrawerController] getter.
  ValueNotifier<MyoroDrawer?> get selectedDrawerController {
    return _selectedDrawerController;
  }

  /// Getter of [_selectedDrawerController]'s value.
  MyoroDrawer? get selectedDrawer {
    return _selectedDrawerController.value;
  }

  /// [_isEndDrawerController] setter.
  set isEndDrawer(bool isEndDrawer) {
    _isEndDrawerController.value = isEndDrawer;
  }

  /// [_selectedDrawerController] setter.
  set selectedDrawer(MyoroDrawer? drawer) {
    _selectedDrawerController.value = drawer;
  }
}
