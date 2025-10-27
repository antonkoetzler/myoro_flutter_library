import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_drawer.dart';
part '../_widget/_myoro_screen_state.dart';

/// Root widget of any screen widget.
class MyoroScreen extends StatefulWidget {
  /// Default value for [drawerEnableOpenDragGesture].
  static const drawerEnableOpenDragGestureDefaultValue = true;

  /// Default value for [endDrawerEnableOpenDragGesture].
  static const endDrawerEnableOpenDragGestureDefaultValue = true;

  /// Creates a new instance of [MyoroScreen].
  const MyoroScreen({
    super.key,
    this.drawerController,
    this.appBar,
    this.drawerEnableOpenDragGesture = drawerEnableOpenDragGestureDefaultValue,
    this.endDrawerEnableOpenDragGesture = endDrawerEnableOpenDragGestureDefaultValue,
    required this.body,
  });

  /// [MyoroDrawerController] if it needs to be controlled externally.
  final MyoroDrawerController? drawerController;

  /// App bar of the screen.
  final PreferredSizeWidget? appBar;

  /// [Scaffold.drawerEnableOpenDragGesture]
  final bool drawerEnableOpenDragGesture;

  /// [Scaffold.endDrawerEnableOpenDragGesture]
  final bool endDrawerEnableOpenDragGesture;

  /// Body of the screen.
  final Widget body;

  @override
  State<MyoroScreen> createState() => _MyoroScreenState();
}
