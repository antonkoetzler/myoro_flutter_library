// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_app_bar_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroAppBarStyle] once the code is generated.
///
/// ```dart
/// class MyoroAppBarStyle with _$MyoroAppBarStyleMixin {}
/// ```
mixin _$MyoroAppBarStyleMixin {
  MyoroAppBarStyle get self => this as MyoroAppBarStyle;

  @override
  bool operator ==(Object other) {
    return other is MyoroAppBarStyle &&
        other.runtimeType == runtimeType &&
        other.bordered == self.bordered &&
        other.backgroundColor == self.backgroundColor &&
        other.contentPadding == self.contentPadding;
  }

  @override
  int get hashCode {
    return Object.hash(self.bordered, self.backgroundColor, self.contentPadding);
  }

  @override
  String toString() =>
      'MyoroAppBarStyle(\n'
      '  bordered: ${self.bordered},\n'
      '  backgroundColor: ${self.backgroundColor},\n'
      '  contentPadding: ${self.contentPadding},\n'
      ');';
}
