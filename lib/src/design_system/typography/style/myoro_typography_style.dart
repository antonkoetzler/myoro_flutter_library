// coverage:ignore-file

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
  late TextStyle tiny;

  /// [MyoroFontSizeEnum.small]
  late TextStyle small;

  /// [MyoroFontSizeEnum.medium]
  late TextStyle medium;

  /// [MyoroFontSizeEnum.large]
  late TextStyle large;

  /// [MyoroFontSizeEnum.extraLarge]
  late TextStyle extraLarge;
}
