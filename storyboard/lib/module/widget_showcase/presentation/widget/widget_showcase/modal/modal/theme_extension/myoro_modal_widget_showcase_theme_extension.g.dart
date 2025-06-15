// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_modal_widget_showcase_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroModalWidgetShowcaseThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroModalWidgetShowcaseThemeExtension with _$MyoroModalWidgetShowcaseThemeExtensionMixin {}
/// ```
mixin _$MyoroModalWidgetShowcaseThemeExtensionMixin
    on ThemeExtension<MyoroModalWidgetShowcaseThemeExtension> {
  MyoroModalWidgetShowcaseThemeExtension get self =>
      this as MyoroModalWidgetShowcaseThemeExtension;

  @override
  MyoroModalWidgetShowcaseThemeExtension copyWith({
    double? modalContentImageSize,
  }) {
    return MyoroModalWidgetShowcaseThemeExtension(
      modalContentImageSize:
          modalContentImageSize ?? self.modalContentImageSize,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroModalWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.modalContentImageSize == self.modalContentImageSize;
  }

  @override
  int get hashCode {
    return Object.hashAll([self.modalContentImageSize]);
  }

  @override
  String toString() =>
      'MyoroModalWidgetShowcaseThemeExtension(\n'
      '  modalContentImageSize: ${self.modalContentImageSize},\n'
      ');';
}
