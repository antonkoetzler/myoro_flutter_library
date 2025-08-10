import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Class created solely to encapsulate every [TextStyle] available in MFL.
///
/// Creating fake factories is much easier this way.
final class MyoroTypography {
  MyoroTypography(bool isDarkMode)
    : regular = MyoroTypographyStyle(isDarkMode, FontWeight.normal, FontStyle.normal),
      italic = MyoroTypographyStyle(isDarkMode, FontWeight.normal, FontStyle.italic),
      semiBold = MyoroTypographyStyle(isDarkMode, FontWeight.w600, FontStyle.normal),
      bold = MyoroTypographyStyle(isDarkMode, FontWeight.bold, FontStyle.normal),
      boldItalic = MyoroTypographyStyle(isDarkMode, FontWeight.bold, FontStyle.italic),
      extraBold = MyoroTypographyStyle(isDarkMode, FontWeight.w800, FontStyle.normal);

  /// Regular typography.
  final MyoroTypographyStyle regular;

  /// Italic typography.
  final MyoroTypographyStyle italic;

  /// Semi-bold typography.
  final MyoroTypographyStyle semiBold;

  /// Bold typography.
  final MyoroTypographyStyle bold;

  /// Extra-bold typography.
  final MyoroTypographyStyle extraBold;

  /// Bold-italic typography.
  final MyoroTypographyStyle boldItalic;

  /// Returns all available [TextStyle]s in each [MyoroTypographyStyle].
  List<TextStyle> get allTextStyles {
    final allStyles = [regular, italic, semiBold, bold, boldItalic, extraBold];
    return allStyles.expand((style) => [style.tiny, style.small, style.medium, style.large, style.extraLarge]).toList();
  }

  /// Retrieves a random text style.
  TextStyle get randomTextStyle {
    return allTextStyles[faker.randomGenerator.integer(allTextStyles.length)];
  }

  /// Displays the name of a given [TextStyle].
  String getTextStyleName(TextStyle textStyle) {
    return switch (allTextStyles.indexOf(textStyle)) {
      // Regular
      0 => 'Regular tiny',
      1 => 'Regular small',
      2 => 'Regular medium',
      3 => 'Regular large',
      4 => 'Regular extra large',

      // Italic
      5 => 'Italic tiny',
      6 => 'Italic small',
      7 => 'Italic medium',
      8 => 'Italic large',
      9 => 'Italic extra large',

      // Semi-bold
      10 => 'Semi-bold tiny',
      11 => 'Semi-bold small',
      12 => 'Semi-bold medium',
      13 => 'Semi-bold large',
      14 => 'Semi-bold extra large',

      // Bold
      15 => 'Bold tiny',
      16 => 'Bold small',
      17 => 'Bold medium',
      18 => 'Bold large',
      19 => 'Bold extra large',

      // Bold italic
      20 => 'Bold italic tiny',
      21 => 'Bold italic small',
      22 => 'Bold italic medium',
      23 => 'Bold italic large',
      24 => 'Bold italic extra large',

      // Extra bold
      25 => 'Extra bold tiny',
      26 => 'Extra bold small',
      27 => 'Extra bold medium',
      28 => 'Extra bold large',
      29 => 'Extra bold extra large',

      // Should never get here
      _ => throw AssertionError(
        '[MyoroTypographyDesignSystem.getTextStyleName]: [textStyle] is not apart of [MyoroTypographyDesignSystem.getAllTextStyles].',
      ),
    };
  }
}
