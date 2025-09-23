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
    Color? backgroundColor,
    bool backgroundColorProvided = true,
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
      backgroundColor: backgroundColorProvided ? (backgroundColor ?? self.backgroundColor) : null,
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
        other.backgroundColor == self.backgroundColor &&
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
      self.backgroundColor,
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
      '  backgroundColor: ${self.backgroundColor},\n'
      '  columnTextStyle: ${self.columnTextStyle},\n'
      '  columnSpacing: ${self.columnSpacing},\n'
      '  rowTextStyle: ${self.rowTextStyle},\n'
      '  loaderEmptyMessageErrorMessagePadding: ${self.loaderEmptyMessageErrorMessagePadding},\n'
      '  emptyMessageTextStyle: ${self.emptyMessageTextStyle},\n'
      '  errorMessageTextStyle: ${self.errorMessageTextStyle},\n'
      ');';
}
