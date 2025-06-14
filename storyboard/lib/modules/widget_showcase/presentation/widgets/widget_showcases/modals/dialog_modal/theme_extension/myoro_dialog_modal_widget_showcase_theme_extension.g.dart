// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_dialog_modal_widget_showcase_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroDialogModalWidgetShowcaseThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroDialogModalWidgetShowcaseThemeExtension with _$MyoroDialogModalWidgetShowcaseThemeExtensionMixin {}
/// ```
mixin _$MyoroDialogModalWidgetShowcaseThemeExtensionMixin
    on ThemeExtension<MyoroDialogModalWidgetShowcaseThemeExtension> {
  MyoroDialogModalWidgetShowcaseThemeExtension get self =>
      this as MyoroDialogModalWidgetShowcaseThemeExtension;

  @override
  MyoroDialogModalWidgetShowcaseThemeExtension copyWith({
    BorderRadius? childWidgetBorderRadius,
    double? childWidgetSize,
  }) {
    return MyoroDialogModalWidgetShowcaseThemeExtension(
      childWidgetBorderRadius:
          childWidgetBorderRadius ?? self.childWidgetBorderRadius,
      childWidgetSize: childWidgetSize ?? self.childWidgetSize,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDialogModalWidgetShowcaseThemeExtension &&
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
      'MyoroDialogModalWidgetShowcaseThemeExtension(\n'
      '  childWidgetBorderRadius: ${self.childWidgetBorderRadius},\n'
      '  childWidgetSize: ${self.childWidgetSize},\n'
      ');';
}
