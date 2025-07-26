import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  const MyoroAccordionWidgetShowcaseScreenThemeExtension();

  test('MyoroAccordionWidgetShowcaseScreenThemeExtension.builder', () {
    const MyoroAccordionWidgetShowcaseScreenThemeExtension.builder();
  });

  test('MyoroAccordionWidgetShowcaseScreenThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      const MyoroAccordionWidgetShowcaseScreenThemeExtension.fake().lerp(
        const MyoroAccordionWidgetShowcaseScreenThemeExtension.fake(),
        faker.randomGenerator.decimal(),
      );
    }
  });
}
