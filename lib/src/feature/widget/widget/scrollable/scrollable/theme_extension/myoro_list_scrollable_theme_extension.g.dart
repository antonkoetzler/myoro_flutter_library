// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_list_scrollable_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroListScrollableThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroListScrollableThemeExtension with _$MyoroListScrollableThemeExtensionMixin {}
/// ```
mixin _$MyoroListScrollableThemeExtensionMixin on ThemeExtension<MyoroListScrollableThemeExtension> {
  MyoroListScrollableThemeExtension get self => this as MyoroListScrollableThemeExtension;

  @override
  MyoroListScrollableThemeExtension copyWith({
    EdgeInsets? padding,
    bool paddingProvided = true,
    double? gradientSize,
    bool gradientSizeProvided = true,
    Color? gradientColor,
    bool gradientColorProvided = true,
    double? spacing,
    bool spacingProvided = true,
    MyoroFeedbackStyle? emptyFeedbackStyle,
    bool emptyFeedbackStyleProvided = true,
  }) {
    return MyoroListScrollableThemeExtension(
      padding: paddingProvided ? (padding ?? self.padding) : null,
      gradientSize: gradientSizeProvided ? (gradientSize ?? self.gradientSize) : null,
      gradientColor: gradientColorProvided ? (gradientColor ?? self.gradientColor) : null,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      emptyFeedbackStyle: emptyFeedbackStyleProvided ? (emptyFeedbackStyle ?? self.emptyFeedbackStyle) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroListScrollableThemeExtension &&
        other.runtimeType == runtimeType &&
        other.padding == self.padding &&
        other.gradientSize == self.gradientSize &&
        other.gradientColor == self.gradientColor &&
        other.spacing == self.spacing &&
        other.emptyFeedbackStyle == self.emptyFeedbackStyle;
  }

  @override
  int get hashCode {
    return Object.hash(self.padding, self.gradientSize, self.gradientColor, self.spacing, self.emptyFeedbackStyle);
  }

  @override
  String toString() =>
      'MyoroListScrollableThemeExtension(\n'
      '  padding: ${self.padding},\n'
      '  gradientSize: ${self.gradientSize},\n'
      '  gradientColor: ${self.gradientColor},\n'
      '  spacing: ${self.spacing},\n'
      '  emptyFeedbackStyle: ${self.emptyFeedbackStyle},\n'
      ');';
}
