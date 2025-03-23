import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

MyoroTypographyDesignSystem get _typographyInstance {
  return MyoroTypographyDesignSystem.instance;
}

/// Unit test of [MyoroTypographyDesignSystem].
void main() {
  final bool isDarkMode = faker.randomGenerator.boolean();

  void expectTextStyle(
    TextStyle textStyle, {
    required MyoroFontSizeEnum fontSize,
    required FontWeight fontWeight,
    required FontStyle fontStyle,
  }) {
    expect(textStyle.fontFamily, 'Nunito');
    expect(
      textStyle.color,
      isDarkMode
          ? MyoroDarkModeColorDesignSystem.secondary
          : MyoroLightModeColorDesignSystem.secondary,
    );
    expect(textStyle.fontSize, fontSize.size);
    expect(textStyle.fontWeight, fontWeight);
    expect(textStyle.fontStyle, fontStyle);
  }

  test('[MyoroTypographyDesignSystem.instance]', () {
    expect(() => _typographyInstance, throwsAssertionError);
    MyoroTypographyDesignSystem.isDarkMode = isDarkMode;
    expect(() => _typographyInstance, returnsNormally);
  });

  test('[MyoroTypographyDesignSystem]\'s [TextStyle]s', () {
    // ########## REGULAR ##########
    expectTextStyle(
      _typographyInstance.regularSmall,
      fontSize: MyoroFontSizeEnum.small,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
    );
    expectTextStyle(
      _typographyInstance.regularMedium,
      fontSize: MyoroFontSizeEnum.medium,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
    );
    expectTextStyle(
      _typographyInstance.regularLarge,
      fontSize: MyoroFontSizeEnum.large,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.normal,
    );
    // #############################

    // ########## ITALIC ##########
    expectTextStyle(
      _typographyInstance.italicSmall,
      fontSize: MyoroFontSizeEnum.small,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
    );
    expectTextStyle(
      _typographyInstance.italicMedium,
      fontSize: MyoroFontSizeEnum.medium,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
    );
    expectTextStyle(
      _typographyInstance.italicLarge,
      fontSize: MyoroFontSizeEnum.large,
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic,
    );
    // ############################

    // ########## SEMI-BOLD #########
    expectTextStyle(
      _typographyInstance.semiBoldSmall,
      fontSize: MyoroFontSizeEnum.small,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
    expectTextStyle(
      _typographyInstance.semiBoldMedium,
      fontSize: MyoroFontSizeEnum.medium,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
    expectTextStyle(
      _typographyInstance.semiBoldLarge,
      fontSize: MyoroFontSizeEnum.large,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
    );
    // ##############################

    // ########## BOLD ##########
    expectTextStyle(
      _typographyInstance.boldSmall,
      fontSize: MyoroFontSizeEnum.small,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    );
    expectTextStyle(
      _typographyInstance.boldMedium,
      fontSize: MyoroFontSizeEnum.medium,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    );
    expectTextStyle(
      _typographyInstance.boldLarge,
      fontSize: MyoroFontSizeEnum.large,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    );
    // ##########################

    // ########## BOLD-ITALIC ##########
    expectTextStyle(
      _typographyInstance.boldItalicSmall,
      fontSize: MyoroFontSizeEnum.small,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    );
    expectTextStyle(
      _typographyInstance.boldItalicMedium,
      fontSize: MyoroFontSizeEnum.medium,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    );
    expectTextStyle(
      _typographyInstance.boldItalicLarge,
      fontSize: MyoroFontSizeEnum.large,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
    );
    // #################################

    // ########## EXTRA BOLD ##########
    expectTextStyle(
      _typographyInstance.extraBoldSmall,
      fontSize: MyoroFontSizeEnum.small,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.normal,
    );
    expectTextStyle(
      _typographyInstance.extraBoldMedium,
      fontSize: MyoroFontSizeEnum.medium,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.normal,
    );
    expectTextStyle(
      _typographyInstance.extraBoldLarge,
      fontSize: MyoroFontSizeEnum.large,
      fontWeight: FontWeight.w800,
      fontStyle: FontStyle.normal,
    );
  });

  test('[MyoroTypographyDesignSystem.getAllTextStyles]', () {
    final List<TextStyle> allTextStyles = _typographyInstance.allTextStyles;

    expect(allTextStyles.length, 18);
    // Regular
    expect(allTextStyles.contains(_typographyInstance.regularSmall), isTrue);
    expect(allTextStyles.contains(_typographyInstance.regularMedium), isTrue);
    expect(allTextStyles.contains(_typographyInstance.regularLarge), isTrue);

    // Italic
    expect(allTextStyles.contains(_typographyInstance.italicSmall), isTrue);
    expect(allTextStyles.contains(_typographyInstance.italicMedium), isTrue);
    expect(allTextStyles.contains(_typographyInstance.italicLarge), isTrue);

    // Semi-bold
    expect(allTextStyles.contains(_typographyInstance.semiBoldSmall), isTrue);
    expect(allTextStyles.contains(_typographyInstance.semiBoldMedium), isTrue);
    expect(allTextStyles.contains(_typographyInstance.semiBoldLarge), isTrue);

    // Bold
    expect(allTextStyles.contains(_typographyInstance.boldSmall), isTrue);
    expect(allTextStyles.contains(_typographyInstance.boldMedium), isTrue);
    expect(allTextStyles.contains(_typographyInstance.boldLarge), isTrue);

    // Bold italic
    expect(allTextStyles.contains(_typographyInstance.boldItalicSmall), isTrue);
    expect(
      allTextStyles.contains(_typographyInstance.boldItalicMedium),
      isTrue,
    );
    expect(allTextStyles.contains(_typographyInstance.boldItalicLarge), isTrue);

    // Extra bold
    expect(allTextStyles.contains(_typographyInstance.extraBoldSmall), isTrue);
    expect(allTextStyles.contains(_typographyInstance.extraBoldMedium), isTrue);
    expect(allTextStyles.contains(_typographyInstance.extraBoldLarge), isTrue);
  });

  test('[MyoroTypographyDesignSystem.getTextStyleName]', () {
    // Regular
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.regularSmall),
      MyoroTypographyDesignSystem.regularSmallName,
    );
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.regularMedium),
      MyoroTypographyDesignSystem.regularMediumName,
    );
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.regularLarge),
      MyoroTypographyDesignSystem.regularLargeName,
    );

    // Italic
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.italicSmall),
      MyoroTypographyDesignSystem.italicSmallName,
    );
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.italicMedium),
      MyoroTypographyDesignSystem.italicMediumName,
    );
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.italicLarge),
      MyoroTypographyDesignSystem.italicLargeName,
    );

    // Semi-bold
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.semiBoldSmall),
      MyoroTypographyDesignSystem.semiBoldSmallName,
    );
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.semiBoldMedium),
      MyoroTypographyDesignSystem.semiBoldMediumName,
    );
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.semiBoldLarge),
      MyoroTypographyDesignSystem.semiBoldLargeName,
    );

    // Bold
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.boldSmall),
      MyoroTypographyDesignSystem.boldSmallName,
    );
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.boldMedium),
      MyoroTypographyDesignSystem.boldMediumName,
    );
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.boldLarge),
      MyoroTypographyDesignSystem.boldLargeName,
    );

    // Bold italic
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.boldItalicSmall),
      MyoroTypographyDesignSystem.boldItalicSmallName,
    );
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.boldItalicSmall),
      MyoroTypographyDesignSystem.boldItalicSmallName,
    );
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.boldItalicSmall),
      MyoroTypographyDesignSystem.boldItalicSmallName,
    );

    // Extra bold
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.extraBoldSmall),
      MyoroTypographyDesignSystem.extraBoldSmallName,
    );
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.extraBoldMedium),
      MyoroTypographyDesignSystem.extraBoldMediumName,
    );
    expect(
      _typographyInstance.getTextStyleName(_typographyInstance.extraBoldLarge),
      MyoroTypographyDesignSystem.extraBoldLargeName,
    );

    // Assertion case
    expect(
      () => _typographyInstance.getTextStyleName(const TextStyle()),
      throwsAssertionError,
    );
  });

  test('[MyoroTypographyDesignSystem.randomTextStyle]', () {
    expect(
      _typographyInstance.allTextStyles.contains(
        _typographyInstance.randomTextStyle,
      ),
      isTrue,
    );
  });
}
