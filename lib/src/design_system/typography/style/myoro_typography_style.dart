import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Style of [MyoroTypography].
class MyoroTypographyStyle {
  /// Creates a [TextStyle].
  static TextStyle _textStyleBuilder(
    MyoroFontSizeEnum fontSize,
    bool isDarkMode,
    FontWeight fontWeight,
    FontStyle fontStyle,
  ) {
    return TextStyle(
      fontFamily: 'Nunito',
      color: isDarkMode ? MyoroColors.gray2 : MyoroColors.gray1,
      fontSize: fontSize.size,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  MyoroTypographyStyle(bool isDarkMode, FontWeight fontWeight, FontStyle fontStyle)
    : tiny = _textStyleBuilder(MyoroFontSizeEnum.tiny, isDarkMode, fontWeight, fontStyle),
      small = _textStyleBuilder(MyoroFontSizeEnum.small, isDarkMode, fontWeight, fontStyle),
      medium = _textStyleBuilder(MyoroFontSizeEnum.medium, isDarkMode, fontWeight, fontStyle),
      large = _textStyleBuilder(MyoroFontSizeEnum.large, isDarkMode, fontWeight, fontStyle),
      extraLarge = _textStyleBuilder(MyoroFontSizeEnum.extraLarge, isDarkMode, fontWeight, fontStyle);

  /// [MyoroFontSizeEnum.tiny]
  late final TextStyle tiny;

  /// [MyoroFontSizeEnum.small]
  late final TextStyle small;

  /// [MyoroFontSizeEnum.medium]
  late final TextStyle medium;

  /// [MyoroFontSizeEnum.large]
  late final TextStyle large;

  /// [MyoroFontSizeEnum.extraLarge]
  late final TextStyle extraLarge;

  @override
  bool operator ==(Object other) {
    return other is MyoroTypographyStyle &&
        other.runtimeType == runtimeType &&
        other.tiny == tiny &&
        other.small == small &&
        other.medium == medium &&
        other.large == large &&
        other.extraLarge == extraLarge;
  }

  @override
  int get hashCode {
    return Object.hash(tiny, small, medium, large, extraLarge);
  }

  @override
  String toString() =>
      'MyoroTypographyStyle(\n'
      '  tiny: $tiny,\n'
      '  small: $small,\n'
      '  medium: $medium,\n'
      '  large: $large,\n'
      '  extraLarge: $extraLarge,\n'
      ');';
}
