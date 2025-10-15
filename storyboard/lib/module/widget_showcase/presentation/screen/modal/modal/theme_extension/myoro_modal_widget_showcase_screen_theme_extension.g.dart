// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_modal_widget_showcase_screen_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroModalWidgetShowcaseScreenThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroModalWidgetShowcaseScreenThemeExtension with _$MyoroModalWidgetShowcaseScreenThemeExtensionMixin {}
/// ```
mixin _$MyoroModalWidgetShowcaseScreenThemeExtensionMixin
    on ThemeExtension<MyoroModalWidgetShowcaseScreenThemeExtension> {
  MyoroModalWidgetShowcaseScreenThemeExtension get self =>
      this as MyoroModalWidgetShowcaseScreenThemeExtension;

  @override
  MyoroModalWidgetShowcaseScreenThemeExtension copyWith({
    double? modalContentImageSize,
  }) {
    return MyoroModalWidgetShowcaseScreenThemeExtension(
      modalContentImageSize:
          modalContentImageSize ?? self.modalContentImageSize,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroModalWidgetShowcaseScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.modalContentImageSize == self.modalContentImageSize;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.modalContentImageSize]);
  }

  @override
  String toString() =>
      'MyoroModalWidgetShowcaseScreenThemeExtension(\n'
      '  modalContentImageSize: ${self.modalContentImageSize},\n'
      ');';
}
