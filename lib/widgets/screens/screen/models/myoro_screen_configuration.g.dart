// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_screen_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroScreenConfigurationExtension on MyoroScreenConfiguration {
  MyoroScreenConfiguration copyWith({
    MyoroDrawerController? drawerController,
    bool drawerControllerProvided = true,
    PreferredSizeWidget? appBar,
    bool appBarProvided = true,
    Widget? body,
  }) {
    return MyoroScreenConfiguration(
      drawerController:
          drawerControllerProvided
              ? (drawerController ?? this.drawerController)
              : null,
      appBar: appBarProvided ? (appBar ?? this.appBar) : null,
      body: body ?? this.body,
    );
  }
}

/// Apply this mixin to [MyoroScreenConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroScreenConfiguration with $MyoroScreenConfigurationMixin {}
/// ```
mixin $MyoroScreenConfigurationMixin {
  MyoroScreenConfiguration get self => this as MyoroScreenConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroScreenConfiguration &&
        other.runtimeType == runtimeType &&
        other.drawerController == self.drawerController &&
        other.appBar == self.appBar &&
        other.body == self.body;
  }

  @override
  int get hashCode {
    return Object.hash(self.drawerController, self.appBar, self.body);
  }

  @override
  String toString() =>
      'MyoroScreenConfiguration(\n'
      '  drawerController: ${self.drawerController},\n'
      '  appBar: ${self.appBar},\n'
      '  body: ${self.body},\n'
      ');';
}
