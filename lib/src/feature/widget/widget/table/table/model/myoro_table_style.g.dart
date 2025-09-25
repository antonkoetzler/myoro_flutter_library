// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_table_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroTableStyle] once the code is generated.
///
/// ```dart
/// class MyoroTableStyle with _$MyoroTableStyleMixin {}
/// ```
mixin _$MyoroTableStyleMixin {
  MyoroTableStyle get self => this as MyoroTableStyle;

  @override
  bool operator ==(Object other) {
    return other is MyoroTableStyle &&
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
      'MyoroTableStyle(\n'
      '  backgroundColor: ${self.backgroundColor},\n'
      '  columnTextStyle: ${self.columnTextStyle},\n'
      '  columnSpacing: ${self.columnSpacing},\n'
      '  rowTextStyle: ${self.rowTextStyle},\n'
      '  loaderEmptyMessageErrorMessagePadding: ${self.loaderEmptyMessageErrorMessagePadding},\n'
      '  emptyMessageTextStyle: ${self.emptyMessageTextStyle},\n'
      '  errorMessageTextStyle: ${self.errorMessageTextStyle},\n'
      ');';
}
