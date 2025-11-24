import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_table_style.g.dart';

/// Style model of [MyoroTable].
@immutable
@myoroModel
class MyoroTableStyle with _$MyoroTableStyleMixin {
  /// Lerp function.
  static MyoroTableStyle lerp(MyoroTableStyle? a, MyoroTableStyle? b, double t) {
    return MyoroTableStyle(
      backgroundColor: Color.lerp(a?.backgroundColor, b?.backgroundColor, t),
      columnTextStyle: TextStyle.lerp(a?.columnTextStyle, b?.columnTextStyle, t),
      columnSpacing: lerpDouble(a?.columnSpacing, b?.columnSpacing, t),
      rowTextStyle: TextStyle.lerp(a?.rowTextStyle, b?.rowTextStyle, t),
      loaderEmptyMessageErrorMessagePadding: EdgeInsets.lerp(
        a?.loaderEmptyMessageErrorMessagePadding,
        b?.loaderEmptyMessageErrorMessagePadding,
        t,
      ),
      emptyMessageTextStyle: TextStyle.lerp(a?.emptyMessageTextStyle, b?.emptyMessageTextStyle, t),
      errorMessageTextStyle: TextStyle.lerp(a?.errorMessageTextStyle, b?.errorMessageTextStyle, t),
    );
  }

  /// Default constructor.
  const MyoroTableStyle({
    this.backgroundColor,
    this.columnTextStyle,
    this.columnSpacing,
    this.rowTextStyle,
    this.loaderEmptyMessageErrorMessagePadding,
    this.emptyMessageTextStyle,
    this.errorMessageTextStyle,
  });

  /// Fake constructor.
  factory MyoroTableStyle.fake() {
    return MyoroTableStyle(
      backgroundColor: myoroNullableFake<Color>(),
      columnTextStyle: myoroNullableFake<TextStyle>(),
      columnSpacing: myoroNullableFake<double>(),
      rowTextStyle: myoroNullableFake<TextStyle>(),
      loaderEmptyMessageErrorMessagePadding: myoroNullableFake<EdgeInsets>(),
      emptyMessageTextStyle: myoroNullableFake<TextStyle>(),
      errorMessageTextStyle: myoroNullableFake<TextStyle>(),
    );
  }

  /// Background color of the table.
  final Color? backgroundColor;

  /// Default [TextStyle] of columns.
  final TextStyle? columnTextStyle;

  /// Spacing between columns.
  final double? columnSpacing;

  /// Default [TextStyle] of rows.
  final TextStyle? rowTextStyle;

  /// [EdgeInsets] of the loader, empty message and error message.
  final EdgeInsets? loaderEmptyMessageErrorMessagePadding;

  /// [TextStyle] of the empty message.
  final TextStyle? emptyMessageTextStyle;

  /// [TextStyle] of the error message.
  final TextStyle? errorMessageTextStyle;
}
