import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroTypographyDesignSystem].
void main() {
  final TextTheme textTheme = createMyoroTextTheme(
    faker.randomGenerator.boolean(),
  );

  test('MyoroTypographyDesignSystem.instance', () {
    // Assertion error when [MyoroTypographyDesignSystem.textTheme] isn't set.
    expect(() => MyoroTypographyDesignSystem.instance, throwsAssertionError);
    MyoroTypographyDesignSystem.textTheme = textTheme;
    expect(() => MyoroTypographyDesignSystem.instance, returnsNormally);
  });

  test('MyoroTypographyDesignSystem.allTextStyles', () {
    final List<TextStyle> allTextStyles =
        MyoroTypographyDesignSystem.instance.allTextStyles;
    expect(allTextStyles.length, 15);
    expect(allTextStyles.contains(textTheme.bodySmall), isTrue);
    expect(allTextStyles.contains(textTheme.bodyMedium), isTrue);
    expect(allTextStyles.contains(textTheme.bodyLarge), isTrue);
    expect(allTextStyles.contains(textTheme.headlineSmall), isTrue);
    expect(allTextStyles.contains(textTheme.headlineMedium), isTrue);
    expect(allTextStyles.contains(textTheme.headlineLarge), isTrue);
    expect(allTextStyles.contains(textTheme.labelSmall), isTrue);
    expect(allTextStyles.contains(textTheme.labelMedium), isTrue);
    expect(allTextStyles.contains(textTheme.labelLarge), isTrue);
    expect(allTextStyles.contains(textTheme.titleSmall), isTrue);
    expect(allTextStyles.contains(textTheme.titleMedium), isTrue);
    expect(allTextStyles.contains(textTheme.titleLarge), isTrue);
    expect(allTextStyles.contains(textTheme.displaySmall), isTrue);
    expect(allTextStyles.contains(textTheme.displayMedium), isTrue);
    expect(allTextStyles.contains(textTheme.displayLarge), isTrue);
  });

  test('MyoroTypographyDesignSystem.getTextStyleName', () {
    final instance = MyoroTypographyDesignSystem.instance;
    expect(
      instance.getTextStyleName(instance.regularSmall),
      MyoroTypographyDesignSystem.regularSmallName,
    );
    expect(
      instance.getTextStyleName(instance.regularMedium),
      MyoroTypographyDesignSystem.regularMediumName,
    );
    expect(
      instance.getTextStyleName(instance.regularLarge),
      MyoroTypographyDesignSystem.regularLargeName,
    );
    expect(
      instance.getTextStyleName(instance.italicSmall),
      MyoroTypographyDesignSystem.italicSmallName,
    );
    expect(
      instance.getTextStyleName(instance.italicMedium),
      MyoroTypographyDesignSystem.italicMediumName,
    );
    expect(
      instance.getTextStyleName(instance.italicLarge),
      MyoroTypographyDesignSystem.italicLargeName,
    );
    expect(
      instance.getTextStyleName(instance.semiBoldSmall),
      MyoroTypographyDesignSystem.semiBoldSmallName,
    );
    expect(
      instance.getTextStyleName(instance.semiBoldMedium),
      MyoroTypographyDesignSystem.semiBoldMediumName,
    );
    expect(
      instance.getTextStyleName(instance.semiBoldLarge),
      MyoroTypographyDesignSystem.semiBoldLargeName,
    );
    expect(
      instance.getTextStyleName(instance.boldSmall),
      MyoroTypographyDesignSystem.boldSmallName,
    );
    expect(
      instance.getTextStyleName(instance.boldMedium),
      MyoroTypographyDesignSystem.boldMediumName,
    );
    expect(
      instance.getTextStyleName(instance.boldLarge),
      MyoroTypographyDesignSystem.boldLargeName,
    );
    expect(
      instance.getTextStyleName(instance.extraBoldSmall),
      MyoroTypographyDesignSystem.extraBoldSmallName,
    );
    expect(
      instance.getTextStyleName(instance.extraBoldMedium),
      MyoroTypographyDesignSystem.extraBoldMediumName,
    );
    expect(
      instance.getTextStyleName(instance.extraBoldLarge),
      MyoroTypographyDesignSystem.extraBoldLargeName,
    );
    expect(
      () => instance.getTextStyleName(const TextStyle()),
      throwsAssertionError,
    );
  });

  test('MyoroTypographyDesignSystem.randomTextStyle', () {
    final instance = MyoroTypographyDesignSystem.instance;
    expect(instance.allTextStyles.contains(instance.randomTextStyle), isTrue);
  });
}
