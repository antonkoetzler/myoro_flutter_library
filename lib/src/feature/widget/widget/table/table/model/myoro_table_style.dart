import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_table_style.g.dart';

/// Style model of [MyoroTable].
@immutable
@myoroModel
class MyoroTableStyle with _$MyoroTableStyleMixin {
  static MyoroTableStyle lerp(MyoroTableStyle? a, MyoroTableStyle? b, double t) {
    return MyoroTableStyle(
      backgroundColor: Color.lerp(a?.backgroundColor, b?.backgroundColor, t),
      columnTextStyle: TextStyle.lerp(a?.columnTextStyle, b?.columnTextStyle, t),
      columnSpacing: lerpDouble(a?.columnSpacing, b?.columnSpacing, t),
      rowTextStyle: TextStyle.lerp(a?.rowTextStyle, b?.rowTextStyle, t),
      loaderEmptyMessageErrorMessagePadding: EdgeInsets.lerp(a?.loaderEmptyMessageErrorMessagePadding, b?.loaderEmptyMessageErrorMessagePadding, t),
      emptyMessageTextStyle: TextStyle.lerp(a?.emptyMessageTextStyle, b?.emptyMessageTextStyle, t),
      errorMessageTextStyle: TextStyle.lerp(a?.errorMessageTextStyle, b?.errorMessageTextStyle, t),
    );
  }

  const MyoroTableStyle({
    this.backgroundColor,
    this.columnTextStyle,
    this.columnSpacing,
    this.rowTextStyle,
    this.loaderEmptyMessageErrorMessagePadding,
    this.emptyMessageTextStyle,
    this.errorMessageTextStyle,
  });

  // coverage:ignore-start
  factory MyoroTableStyle.fake() {
    return MyoroTableStyle(
      backgroundColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      columnTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      columnSpacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      rowTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      loaderEmptyMessageErrorMessagePadding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      emptyMessageTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      errorMessageTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
    );
  }
  // coverage:ignore-end

  /// Background color of the table.
  final Color? backgroundColor;

  /// Default [TextStyle] of [_Column].
  final TextStyle? columnTextStyle;

  /// Spacing between columns.
  final double? columnSpacing;

  /// Default [TextStyle] of [_Row].
  final TextStyle? rowTextStyle;

  /// [EdgeInsets] of [_Loader], [_EmptyMessage] and [_ErrorMessage].
  final EdgeInsets? loaderEmptyMessageErrorMessagePadding;

  /// [TextStyle] of [_EmptyMessage].
  final TextStyle? emptyMessageTextStyle;

  /// [TextStyle] of [_ErrorMessage].
  final TextStyle? errorMessageTextStyle;
}
