// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_table_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroTableThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroTableThemeExtension with _$MyoroTableThemeExtensionMixin {}
/// ```
mixin _$MyoroTableThemeExtensionMixin on ThemeExtension<MyoroTableThemeExtension> {
  MyoroTableThemeExtension get self => this as MyoroTableThemeExtension;

  @override
  MyoroTableThemeExtension copyWith({
    BoxDecoration? decoration,
    bool decorationProvided = true,
    TextStyle? columnTextStyle,
    bool columnTextStyleProvided = true,
    double? columnSpacing,
    bool columnSpacingProvided = true,
    TextStyle? rowTextStyle,
    bool rowTextStyleProvided = true,
    EdgeInsets? loaderEmptyMessageErrorMessagePadding,
    bool loaderEmptyMessageErrorMessagePaddingProvided = true,
    TextStyle? emptyMessageTextStyle,
    bool emptyMessageTextStyleProvided = true,
    TextStyle? errorMessageTextStyle,
    bool errorMessageTextStyleProvided = true,
  }) {
    return MyoroTableThemeExtension(
      decoration: decorationProvided ? (decoration ?? self.decoration) : null,
      columnTextStyle: columnTextStyleProvided ? (columnTextStyle ?? self.columnTextStyle) : null,
      columnSpacing: columnSpacingProvided ? (columnSpacing ?? self.columnSpacing) : null,
      rowTextStyle: rowTextStyleProvided ? (rowTextStyle ?? self.rowTextStyle) : null,
      loaderEmptyMessageErrorMessagePadding: loaderEmptyMessageErrorMessagePaddingProvided
          ? (loaderEmptyMessageErrorMessagePadding ?? self.loaderEmptyMessageErrorMessagePadding)
          : null,
      emptyMessageTextStyle: emptyMessageTextStyleProvided
          ? (emptyMessageTextStyle ?? self.emptyMessageTextStyle)
          : null,
      errorMessageTextStyle: errorMessageTextStyleProvided
          ? (errorMessageTextStyle ?? self.errorMessageTextStyle)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTableThemeExtension &&
        other.runtimeType == runtimeType &&
        other.decoration == self.decoration &&
        other.columnTextStyle == self.columnTextStyle &&
        other.columnSpacing == self.columnSpacing &&
        other.rowTextStyle == self.rowTextStyle &&
        other.loaderEmptyMessageErrorMessagePadding == self.loaderEmptyMessageErrorMessagePadding &&
        other.emptyMessageTextStyle == self.emptyMessageTextStyle &&
        other.errorMessageTextStyle == self.errorMessageTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.decoration,
      self.columnTextStyle,
      self.columnSpacing,
      self.rowTextStyle,
      self.loaderEmptyMessageErrorMessagePadding,
      self.emptyMessageTextStyle,
      self.errorMessageTextStyle,
    );
  }

  @override
  String toString() =>
      'MyoroTableThemeExtension(\n'
      '  decoration: ${self.decoration},\n'
      '  columnTextStyle: ${self.columnTextStyle},\n'
      '  columnSpacing: ${self.columnSpacing},\n'
      '  rowTextStyle: ${self.rowTextStyle},\n'
      '  loaderEmptyMessageErrorMessagePadding: ${self.loaderEmptyMessageErrorMessagePadding},\n'
      '  emptyMessageTextStyle: ${self.emptyMessageTextStyle},\n'
      '  errorMessageTextStyle: ${self.errorMessageTextStyle},\n'
      ');';
}
