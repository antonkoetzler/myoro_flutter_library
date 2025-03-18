import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroTypographyTheme].
void main() {
  final TextTheme textTheme = createMyoroTextTheme(
    faker.randomGenerator.boolean(),
  );

  test('MyoroTypographyTheme.instance', () {
    // Assertion error when [MyoroTypographyTheme.textTheme] isn't set.
    expect(() => MyoroTypographyTheme.instance, throwsAssertionError);
    MyoroTypographyTheme.textTheme = textTheme;
    expect(() => MyoroTypographyTheme.instance, returnsNormally);
  });

  test('MyoroTypographyTheme.allTextStyles', () {
    final List<TextStyle> allTextStyles =
        MyoroTypographyTheme.instance.allTextStyles;
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

  test('MyoroTypographyTheme.getTextStyleName', () {
    final instance = MyoroTypographyTheme.instance;
    expect(
      instance.getTextStyleName(instance.regularSmall),
      MyoroTypographyTheme.regularSmallName,
    );
    expect(
      instance.getTextStyleName(instance.regularMedium),
      MyoroTypographyTheme.regularMediumName,
    );
    expect(
      instance.getTextStyleName(instance.regularLarge),
      MyoroTypographyTheme.regularLargeName,
    );
    expect(
      instance.getTextStyleName(instance.italicSmall),
      MyoroTypographyTheme.italicSmallName,
    );
    expect(
      instance.getTextStyleName(instance.italicMedium),
      MyoroTypographyTheme.italicMediumName,
    );
    expect(
      instance.getTextStyleName(instance.italicLarge),
      MyoroTypographyTheme.italicLargeName,
    );
    expect(
      instance.getTextStyleName(instance.semiBoldSmall),
      MyoroTypographyTheme.semiBoldSmallName,
    );
    expect(
      instance.getTextStyleName(instance.semiBoldMedium),
      MyoroTypographyTheme.semiBoldMediumName,
    );
    expect(
      instance.getTextStyleName(instance.semiBoldLarge),
      MyoroTypographyTheme.semiBoldLargeName,
    );
    expect(
      instance.getTextStyleName(instance.boldSmall),
      MyoroTypographyTheme.boldSmallName,
    );
    expect(
      instance.getTextStyleName(instance.boldMedium),
      MyoroTypographyTheme.boldMediumName,
    );
    expect(
      instance.getTextStyleName(instance.boldLarge),
      MyoroTypographyTheme.boldLargeName,
    );
    expect(
      instance.getTextStyleName(instance.extraBoldSmall),
      MyoroTypographyTheme.extraBoldSmallName,
    );
    expect(
      instance.getTextStyleName(instance.extraBoldMedium),
      MyoroTypographyTheme.extraBoldMediumName,
    );
    expect(
      instance.getTextStyleName(instance.extraBoldLarge),
      MyoroTypographyTheme.extraBoldLargeName,
    );
    expect(
      () => instance.getTextStyleName(const TextStyle()),
      throwsAssertionError,
    );
  });

  test('MyoroTypographyTheme.randomTextStyle', () {
    final instance = MyoroTypographyTheme.instance;
    expect(instance.allTextStyles.contains(instance.randomTextStyle), isTrue);
  });
}
