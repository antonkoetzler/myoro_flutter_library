// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_screen_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroScreenConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroScreenConfiguration with _$MyoroScreenConfigurationMixin {}
/// ```
mixin _$MyoroScreenConfigurationMixin {
  MyoroScreenConfiguration get self => this as MyoroScreenConfiguration;

  MyoroScreenConfiguration copyWith({
    MyoroDrawerController? drawerController,
    bool drawerControllerProvided = true,
    PreferredSizeWidget? appBar,
    bool appBarProvided = true,
    bool? drawerEnableOpenDragGesture,
    bool? endDrawerEnableOpenDragGesture,
    Widget? body,
  }) {
    return MyoroScreenConfiguration(
      drawerController: drawerControllerProvided ? (drawerController ?? self.drawerController) : null,
      appBar: appBarProvided ? (appBar ?? self.appBar) : null,
      drawerEnableOpenDragGesture: drawerEnableOpenDragGesture ?? self.drawerEnableOpenDragGesture,
      endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture ?? self.endDrawerEnableOpenDragGesture,
      body: body ?? self.body,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroScreenConfiguration &&
        other.runtimeType == runtimeType &&
        other.drawerController == self.drawerController &&
        other.appBar == self.appBar &&
        other.drawerEnableOpenDragGesture == self.drawerEnableOpenDragGesture &&
        other.endDrawerEnableOpenDragGesture == self.endDrawerEnableOpenDragGesture &&
        other.body == self.body;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.drawerController,
      self.appBar,
      self.drawerEnableOpenDragGesture,
      self.endDrawerEnableOpenDragGesture,
      self.body,
    );
  }

  @override
  String toString() =>
      'MyoroScreenConfiguration(\n'
      '  drawerController: ${self.drawerController},\n'
      '  appBar: ${self.appBar},\n'
      '  drawerEnableOpenDragGesture: ${self.drawerEnableOpenDragGesture},\n'
      '  endDrawerEnableOpenDragGesture: ${self.endDrawerEnableOpenDragGesture},\n'
      '  body: ${self.body},\n'
      ');';
}
