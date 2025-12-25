// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_screen_widget_showcase_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroScreenWidgetShowcaseScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroScreenWidgetShowcaseScreenThemeExtension with _$MyoroScreenWidgetShowcaseScreenThemeExtensionMixin {}
/// ```
mixin _$MyoroScreenWidgetShowcaseScreenThemeExtensionMixin
    on ThemeExtension<MyoroScreenWidgetShowcaseScreenThemeExtension> {
  MyoroScreenWidgetShowcaseScreenThemeExtension get self => this as MyoroScreenWidgetShowcaseScreenThemeExtension;

  @override
  MyoroScreenWidgetShowcaseScreenThemeExtension copyWith({IconData? appBarMenuButtonIcon}) {
    return MyoroScreenWidgetShowcaseScreenThemeExtension(
      appBarMenuButtonIcon: appBarMenuButtonIcon ?? self.appBarMenuButtonIcon,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroScreenWidgetShowcaseScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.appBarMenuButtonIcon == self.appBarMenuButtonIcon;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.appBarMenuButtonIcon]);
  }

  @override
  String toString() =>
      'MyoroScreenWidgetShowcaseScreenThemeExtension(\n'
      '  appBarMenuButtonIcon: ${self.appBarMenuButtonIcon},\n'
      ');';
}
