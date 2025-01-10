import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Singleton class used to grab [TextStyle]s created in [createMyoroThemeData].
///
/// This singleton is automatically initialized within [MyoroMaterialApp] so you don't need to worry about that.
final class MyoroTypographyTheme {
  static final _instance = MyoroTypographyTheme();
  static TextTheme? _textTheme;

  static set textTheme(TextTheme textTheme) {
    _textTheme = textTheme;
  }

  static MyoroTypographyTheme get instance {
    assert(
      _textTheme != null,
      '[MyoroTypographyTheme.instance]: You need to set a [TextTheme] before using [MyoroTypographyTheme].',
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
      0 => 'Regular small', // Small.
      1 => 'Regular medium', // Medium.
      2 => 'Regular large', // Large.

      // Italic.
      3 => 'Italic small', // Small.
      4 => 'Italic medium',
      5 => 'Italic large',

      // Semi-bold.
      6 => 'Semi-bold small',
      7 => 'Semi-bold medium',
      8 => 'Semi-bold large',

      // Bold.
      9 => 'Bold small',
      10 => 'Bold medium',
      11 => 'Bold large',

      // Extra bold.
      12 => 'Extra bold small',
      13 => 'Extra bold medium',
      14 => 'Extra bold large',

      // Should never get here.
      _ => throw AssertionError('[MyoroTypographyTheme.getTextStyleName]: [textStyle] is not apart of [MyoroTypographyTheme.getAllTextStyles].'),
    };
  }

  /// Retrieves a random text style.
  TextStyle get randomTextStyle => allTextStyles[faker.randomGenerator.integer(allTextStyles.length)];
}
