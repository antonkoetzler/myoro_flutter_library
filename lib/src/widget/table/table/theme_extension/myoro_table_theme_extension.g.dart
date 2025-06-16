// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_table_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroTableThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroTableThemeExtension with _$MyoroTableThemeExtensionMixin {}
/// ```
mixin _$MyoroTableThemeExtensionMixin
    on ThemeExtension<MyoroTableThemeExtension> {
  MyoroTableThemeExtension get self => this as MyoroTableThemeExtension;

  @override
  MyoroTableThemeExtension copyWith({
    BoxDecoration? decoration,
    TextStyle? columnTextStyle,
    double? columnSpacing,
    TextStyle? rowTextStyle,
    EdgeInsets? loaderEmptyMessageErrorMessagePadding,
    TextStyle? emptyMessageTextStyle,
    TextStyle? errorMessageTextStyle,
  }) {
    return MyoroTableThemeExtension(
      decoration: decoration ?? self.decoration,
      columnTextStyle: columnTextStyle ?? self.columnTextStyle,
      columnSpacing: columnSpacing ?? self.columnSpacing,
      rowTextStyle: rowTextStyle ?? self.rowTextStyle,
      loaderEmptyMessageErrorMessagePadding:
          loaderEmptyMessageErrorMessagePadding ??
          self.loaderEmptyMessageErrorMessagePadding,
      emptyMessageTextStyle:
          emptyMessageTextStyle ?? self.emptyMessageTextStyle,
      errorMessageTextStyle:
          errorMessageTextStyle ?? self.errorMessageTextStyle,
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
        other.loaderEmptyMessageErrorMessagePadding ==
            self.loaderEmptyMessageErrorMessagePadding &&
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
