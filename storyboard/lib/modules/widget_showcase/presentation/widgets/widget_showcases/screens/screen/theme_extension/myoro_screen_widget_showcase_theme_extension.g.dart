// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_screen_widget_showcase_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroScreenWidgetShowcaseThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroScreenWidgetShowcaseThemeExtension with _$MyoroScreenWidgetShowcaseThemeExtensionMixin {}
/// ```
mixin _$MyoroScreenWidgetShowcaseThemeExtensionMixin
    on ThemeExtension<MyoroScreenWidgetShowcaseThemeExtension> {
  MyoroScreenWidgetShowcaseThemeExtension get self =>
      this as MyoroScreenWidgetShowcaseThemeExtension;

  @override
  MyoroScreenWidgetShowcaseThemeExtension copyWith({
    IconData? appBarMenuButtonIcon,
  }) {
    return MyoroScreenWidgetShowcaseThemeExtension(
      appBarMenuButtonIcon: appBarMenuButtonIcon ?? self.appBarMenuButtonIcon,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroScreenWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.appBarMenuButtonIcon == self.appBarMenuButtonIcon;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.appBarMenuButtonIcon]);
  }

  @override
  String toString() =>
      'MyoroScreenWidgetShowcaseThemeExtension(\n'
      '  appBarMenuButtonIcon: ${self.appBarMenuButtonIcon},\n'
      ');';
}
