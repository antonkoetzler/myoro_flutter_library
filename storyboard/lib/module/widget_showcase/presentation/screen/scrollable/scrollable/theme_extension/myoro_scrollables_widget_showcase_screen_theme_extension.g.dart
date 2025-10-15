// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_scrollables_widget_showcase_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroScrollablesWidgetShowcaseScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroScrollablesWidgetShowcaseScreenThemeExtension with _$MyoroScrollablesWidgetShowcaseScreenThemeExtensionMixin {}
/// ```
mixin _$MyoroScrollablesWidgetShowcaseScreenThemeExtensionMixin
    on ThemeExtension<MyoroScrollablesWidgetShowcaseScreenThemeExtension> {
  MyoroScrollablesWidgetShowcaseScreenThemeExtension get self =>
      this as MyoroScrollablesWidgetShowcaseScreenThemeExtension;

  @override
  MyoroScrollablesWidgetShowcaseScreenThemeExtension copyWith({
    BoxConstraints? scrollableConstraints,
  }) {
    return MyoroScrollablesWidgetShowcaseScreenThemeExtension(
      scrollableConstraints:
          scrollableConstraints ?? self.scrollableConstraints,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroScrollablesWidgetShowcaseScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.scrollableConstraints == self.scrollableConstraints;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.scrollableConstraints]);
  }

  @override
  String toString() =>
      'MyoroScrollablesWidgetShowcaseScreenThemeExtension(\n'
      '  scrollableConstraints: ${self.scrollableConstraints},\n'
      ');';
}
