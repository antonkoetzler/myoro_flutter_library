import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Singleton class used to grab [TextStyle]s created in [createMyoroThemeData].
///
/// This singleton is automatically initialized within [MyoroMaterialApp] so you don't need to worry about that.
final class MyoroTypographyDesignSystem {
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
  static const extraBoldSmallName = 'Extra bold small';
  static const extraBoldMediumName = 'Extra bold medium';
  static const extraBoldLargeName = 'Extra bold large';

  static final _instance = MyoroTypographyDesignSystem();
  static TextTheme? _textTheme;

  static set textTheme(TextTheme textTheme) {
    _textTheme = textTheme;
  }

  static MyoroTypographyDesignSystem get instance {
    assert(
      _textTheme != null,
      '[MyoroTypographyDesignSystem.instance]: You need to set a [TextTheme] before using [MyoroTypographyDesignSystem].',
    );
    return _instance;
  }

  // Regular.
  TextStyle get regularSmall => _textTheme!.bodySmall!;
  TextStyle get regularMedium => _textTheme!.bodyMedium!;
  TextStyle get regularLarge => _textTheme!.bodyLarge!;

  // Italic.
  TextStyle get italicSmall => _textTheme!.headlineSmall!;
  TextStyle get italicMedium => _textTheme!.headlineMedium!;
  TextStyle get italicLarge => _textTheme!.headlineLarge!;

  // Semi-bold.
  TextStyle get semiBoldSmall => _textTheme!.labelSmall!;
  TextStyle get semiBoldMedium => _textTheme!.labelMedium!;
  TextStyle get semiBoldLarge => _textTheme!.labelLarge!;

  // Bold.
  TextStyle get boldSmall => _textTheme!.titleSmall!;
  TextStyle get boldMedium => _textTheme!.titleMedium!;
  TextStyle get boldLarge => _textTheme!.titleLarge!;

  // Extra bold.
  TextStyle get extraBoldSmall => _textTheme!.displaySmall!;
  TextStyle get extraBoldMedium => _textTheme!.displayMedium!;
  TextStyle get extraBoldLarge => _textTheme!.displayLarge!;

  /// Grabs all of the available [TextStyles].
  List<TextStyle> get allTextStyles {
    return [
      // Regular.
      regularSmall,
      regularMedium,
      regularLarge,

      // Italic.
      italicSmall,
      italicMedium,
      italicLarge,

      // Semi-bold.
      semiBoldSmall,
      semiBoldMedium,
      semiBoldLarge,

      // Bold.
      boldSmall,
      boldMedium,
      boldLarge,

      // Extra bold.
      extraBoldSmall,
      extraBoldMedium,
      extraBoldLarge,
    ];
  }

  /// Displays the name of a given [TextStyle].
  String getTextStyleName(TextStyle textStyle) {
    return switch (allTextStyles.indexOf(textStyle)) {
      // Regular.
      0 => regularSmallName,
      1 => regularMediumName,
      2 => regularLargeName,

      // Italic.
      3 => italicSmallName,
      4 => italicMediumName,
      5 => italicLargeName,

      // Semi-bold.
      6 => semiBoldSmallName,
      7 => semiBoldMediumName,
      8 => semiBoldLargeName,

      // Bold.
      9 => boldSmallName,
      10 => boldMediumName,
      11 => boldLargeName,

      // Extra bold.
      12 => extraBoldSmallName,
      13 => extraBoldMediumName,
      14 => extraBoldLargeName,

      // Should never get here.
      _ =>
        throw AssertionError(
          '[MyoroTypographyDesignSystem.getTextStyleName]: [textStyle] is not apart of [MyoroTypographyDesignSystem.getAllTextStyles].',
        ),
    };
  }

  /// Retrieves a random text style.
  TextStyle get randomTextStyle =>
      allTextStyles[faker.randomGenerator.integer(allTextStyles.length)];
}
