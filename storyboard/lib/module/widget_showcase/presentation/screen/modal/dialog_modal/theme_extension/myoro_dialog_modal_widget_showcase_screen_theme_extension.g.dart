// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_dialog_modal_widget_showcase_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroDialogModalWidgetShowcaseScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroDialogModalWidgetShowcaseScreenThemeExtension with _$MyoroDialogModalWidgetShowcaseScreenThemeExtensionMixin {}
/// ```
mixin _$MyoroDialogModalWidgetShowcaseScreenThemeExtensionMixin
    on ThemeExtension<MyoroDialogModalWidgetShowcaseScreenThemeExtension> {
  MyoroDialogModalWidgetShowcaseScreenThemeExtension get self =>
      this as MyoroDialogModalWidgetShowcaseScreenThemeExtension;

  @override
  MyoroDialogModalWidgetShowcaseScreenThemeExtension copyWith({
    BorderRadius? childWidgetBorderRadius,
    double? childWidgetSize,
  }) {
    return MyoroDialogModalWidgetShowcaseScreenThemeExtension(
      childWidgetBorderRadius:
          childWidgetBorderRadius ?? self.childWidgetBorderRadius,
      childWidgetSize: childWidgetSize ?? self.childWidgetSize,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDialogModalWidgetShowcaseScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.childWidgetBorderRadius == self.childWidgetBorderRadius &&
        other.childWidgetSize == self.childWidgetSize;
  }

  @override
  int get hashCode {
    return Object.hash(self.childWidgetBorderRadius, self.childWidgetSize);
  }

  @override
  String toString() =>
      'MyoroDialogModalWidgetShowcaseScreenThemeExtension(\n'
      '  childWidgetBorderRadius: ${self.childWidgetBorderRadius},\n'
      '  childWidgetSize: ${self.childWidgetSize},\n'
      ');';
}
