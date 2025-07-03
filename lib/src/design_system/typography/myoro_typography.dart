import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

// TODO: Categorize categories

/// Singleton class used to grab [TextStyle]s created in [createMyoroThemeData].
///
/// This singleton is automatically initialized within [MyoroMaterialApp] so you don't need to worry about that.
final class MyoroTypographyDesignSystem {
  // Names of each [TextStyle].
  static const regularSmallName = 'Regular small';
  static const regularMediumName = 'Regular medium';
  static const regularLargeName = 'Regular large';
  static const italicSmallName = 'Italic small';
  static const italicMediumName = 'Italic medium';
  static const italicLargeName = 'Italic large';
  static const semiBoldSmallName = 'Semi-bold small';
  static const semiBoldMediumName = 'Semi-bold medium';
  static const semiBoldLargeName = 'Semi-bold large';
  static const boldSmallName = 'Bold small';
  static const boldMediumName = 'Bold medium';
  static const boldLargeName = 'Bold large';
  static const boldItalicSmallName = 'Bold italic small';
  static const boldItalicMediumName = 'Bold italic medium';
  static const boldItalicLargeName = 'Bold italic large';
  static const extraBoldSmallName = 'Extra bold small';
  static const extraBoldMediumName = 'Extra bold medium';
  static const extraBoldLargeName = 'Extra bold large';

  /// Singleton instance of the class.
  static final _instance = MyoroTypographyDesignSystem();

  /// [bool] of whether the application is in dark or light mode.
  static bool? _isDarkMode;
  static set isDarkMode(bool isDarkMode) => _isDarkMode = isDarkMode;

  static MyoroTypographyDesignSystem get instance {
    assert(
      _isDarkMode != null,
      '[MyoroTypographyDesignSystem.instance]: You need to set [_isDarkMode] via '
      '[MyoroTypographyDesignSystem.isDarkMode] before using [MyoroTypographyDesignSystem].',
    );
    return _instance;
  }

  // ########## REGULAR ##########
  TextStyle get regularSmall {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.small,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
    );
  }

  TextStyle get regularMedium {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.medium,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
    );
  }

  TextStyle get regularLarge {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.large,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
    );
  }
  // #############################

  // ########## ITALIC ##########
  TextStyle get italicSmall {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.small,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
    );
  }

  TextStyle get italicMedium {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.medium,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
    );
  }

  TextStyle get italicLarge {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.large,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
    );
  }
  // ############################

  // ########## SEMI-BOLD #########
  TextStyle get semiBoldSmall {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.small,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
  }

  TextStyle get semiBoldMedium {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.medium,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
  }

  TextStyle get semiBoldLarge {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.large,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
  }
  // ##############################

  // ########## BOLD ##########
  TextStyle get boldSmall {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.small,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    );
  }

  TextStyle get boldMedium {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.medium,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    );
  }

  TextStyle get boldLarge {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.large,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    );
  }
  // ##########################

  // ########## BOLD-ITALIC ##########
  TextStyle get boldItalicSmall {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.small,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    );
  }

  TextStyle get boldItalicMedium {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.medium,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    );
  }

  TextStyle get boldItalicLarge {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.large,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    );
  }
  // #################################

  // ########## EXTRA BOLD ##########
  TextStyle get extraBoldSmall {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.small,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.normal,
    );
  }

  TextStyle get extraBoldMedium {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.medium,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.normal,
    );
  }

  TextStyle get extraBoldLarge {
    return _createTextStyle(
      fontSize: MyoroFontSizeEnum.large,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.normal,
    );
  }
  // ################################

  /// Grabs all of the available [TextStyle].
  List<TextStyle> get allTextStyles {
    return [
      // Regular
      regularSmall,
      regularMedium,
      regularLarge,

      // Italic
      italicSmall,
      italicMedium,
      italicLarge,

      // Semi-bold
      semiBoldSmall,
      semiBoldMedium,
      semiBoldLarge,

      // Bold
      boldSmall,
      boldMedium,
      boldLarge,

      // Bold italic
      boldItalicSmall,
      boldItalicMedium,
      boldItalicLarge,

      // Extra bold
      extraBoldSmall,
      extraBoldMedium,
      extraBoldLarge,
    ];
  }

  /// Displays the name of a given [TextStyle].
  String getTextStyleName(TextStyle textStyle) {
    return switch (allTextStyles.indexOf(textStyle)) {
      // Regular
      0 => regularSmallName,
      1 => regularMediumName,
      2 => regularLargeName,

      // Italic
      3 => italicSmallName,
      4 => italicMediumName,
      5 => italicLargeName,

      // Semi-bold
      6 => semiBoldSmallName,
      7 => semiBoldMediumName,
      8 => semiBoldLargeName,

      // Bold
      9 => boldSmallName,
      10 => boldMediumName,
      11 => boldLargeName,

      // Bold italic
      12 => boldItalicSmallName,
      13 => boldItalicSmallName,
      14 => boldItalicSmallName,

      // Extra bold
      15 => extraBoldSmallName,
      16 => extraBoldMediumName,
      17 => extraBoldLargeName,

      // Should never get here
      _ =>
        throw AssertionError(
          '[MyoroTypographyDesignSystem.getTextStyleName]: [textStyle] is not apart of [MyoroTypographyDesignSystem.getAllTextStyles].',
        ),
    };
  }

  /// Retrieves a random text style.
  TextStyle get randomTextStyle {
    return allTextStyles[faker.randomGenerator.integer(allTextStyles.length)];
  }

  /// Creates a [TextStyle].
  TextStyle _createTextStyle({
    required MyoroFontSizeEnum fontSize,
    required FontWeight fontWeight,
    required FontStyle fontStyle,
  }) {
    return TextStyle(
      fontFamily: 'Nunito',
      color: _isDarkMode! ? MyoroColors.gray2 : MyoroColors.gray1,
      fontSize: fontSize.size,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }
}
