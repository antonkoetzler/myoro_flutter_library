import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final isDarkMode = faker.randomGenerator.boolean();
  final typography = MyoroTypography(isDarkMode);

  test('MyoroTypography fields', () {
    expect(typography.regular, MyoroTypographyStyle(isDarkMode, FontWeight.normal, FontStyle.normal));
    expect(typography.italic, MyoroTypographyStyle(isDarkMode, FontWeight.normal, FontStyle.italic));
    expect(typography.semiBold, MyoroTypographyStyle(isDarkMode, FontWeight.w600, FontStyle.normal));
    expect(typography.bold, MyoroTypographyStyle(isDarkMode, FontWeight.bold, FontStyle.normal));
    expect(typography.boldItalic, MyoroTypographyStyle(isDarkMode, FontWeight.bold, FontStyle.italic));
    expect(typography.extraBold, MyoroTypographyStyle(isDarkMode, FontWeight.w800, FontStyle.normal));
  });

  test('MyoroTypography.allTextStyles', () {
    expect(typography.allTextStyles.length, 30);
  });

  test('MyoroTypography.randomTextStyle', () {
    expect(typography.allTextStyles.contains(typography.randomTextStyle), isTrue);
  });

  test('MyoroTypography.getTextStyleName', () {
    // Regular
    expect(typography.getTextStyleName(typography.regular.tiny), 'Regular tiny');
    expect(typography.getTextStyleName(typography.regular.small), 'Regular small');
    expect(typography.getTextStyleName(typography.regular.medium), 'Regular medium');
    expect(typography.getTextStyleName(typography.regular.large), 'Regular large');
    expect(typography.getTextStyleName(typography.regular.extraLarge), 'Regular extra large');

    // Italic
    expect(typography.getTextStyleName(typography.italic.tiny), 'Italic tiny');
    expect(typography.getTextStyleName(typography.italic.small), 'Italic small');
    expect(typography.getTextStyleName(typography.italic.medium), 'Italic medium');
    expect(typography.getTextStyleName(typography.italic.large), 'Italic large');
    expect(typography.getTextStyleName(typography.italic.extraLarge), 'Italic extra large');

    // Semi-bold
    expect(typography.getTextStyleName(typography.semiBold.tiny), 'Semi-bold tiny');
    expect(typography.getTextStyleName(typography.semiBold.small), 'Semi-bold small');
    expect(typography.getTextStyleName(typography.semiBold.medium), 'Semi-bold medium');
    expect(typography.getTextStyleName(typography.semiBold.large), 'Semi-bold large');
    expect(typography.getTextStyleName(typography.semiBold.extraLarge), 'Semi-bold extra large');

    // Bold
    expect(typography.getTextStyleName(typography.bold.tiny), 'Bold tiny');
    expect(typography.getTextStyleName(typography.bold.small), 'Bold small');
    expect(typography.getTextStyleName(typography.bold.medium), 'Bold medium');
    expect(typography.getTextStyleName(typography.bold.large), 'Bold large');
    expect(typography.getTextStyleName(typography.bold.extraLarge), 'Bold extra large');

    // Bold italic
    expect(typography.getTextStyleName(typography.boldItalic.tiny), 'Bold italic tiny');
    expect(typography.getTextStyleName(typography.boldItalic.small), 'Bold italic small');
    expect(typography.getTextStyleName(typography.boldItalic.medium), 'Bold italic medium');
    expect(typography.getTextStyleName(typography.boldItalic.large), 'Bold italic large');
    expect(typography.getTextStyleName(typography.boldItalic.extraLarge), 'Bold italic extra large');

    // Extra bold
    expect(typography.getTextStyleName(typography.extraBold.tiny), 'Extra bold tiny');
    expect(typography.getTextStyleName(typography.extraBold.small), 'Extra bold small');
    expect(typography.getTextStyleName(typography.extraBold.medium), 'Extra bold medium');
    expect(typography.getTextStyleName(typography.extraBold.large), 'Extra bold large');
    expect(typography.getTextStyleName(typography.extraBold.extraLarge), 'Extra bold extra large');

    // Assertion case
    expect(() => typography.getTextStyleName(const TextStyle()), throwsAssertionError);
  });
}
