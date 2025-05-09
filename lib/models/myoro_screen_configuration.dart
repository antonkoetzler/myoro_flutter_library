import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration of [MyoroScreen].
///
/// TODO: Needs to be tested.
class MyoroScreenConfiguration extends Equatable {
  /// [MyoroDrawerController] if it needs to be controlled externally.
  final MyoroDrawerController? drawerController;

  /// App bar of the screen.
  final PreferredSizeWidget? appBar;

  /// Body of the screen.
  final Widget? body;

  const MyoroScreenConfiguration({this.drawerController, this.appBar, this.body});

  MyoroScreenConfiguration copyWith({
    MyoroDrawerController? drawerController,
    bool drawerControllerProvided = true,
    PreferredSizeWidget? appBar,
    bool appBarProvided = true,
    Widget? body,
    bool bodyProvided = true,
  }) {
    return MyoroScreenConfiguration(
      drawerController: drawerControllerProvided ? (drawerController ?? this.drawerController) : null,
      appBar: appBarProvided ? (appBar ?? this.appBar) : null,
      body: bodyProvided ? (body ?? this.body) : null,
    );
  }

  @override
  List<Object?> get props {
    return [drawerController, appBar, body];
  }

  @override
  String toString() =>
      'MyoroScreenConfiguration(\n'
      '  drawerController: $drawerController,\n'
      '  appBar: $appBar,\n'
      '  body: $body,\n'
      ');';
}
