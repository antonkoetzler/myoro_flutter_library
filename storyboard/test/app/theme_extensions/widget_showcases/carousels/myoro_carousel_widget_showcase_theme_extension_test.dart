import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroCarouselWidgetShowcaseThemeExtension].
void main() {
  test('MyoroCarouselWidgetShowcaseThemeExtension.copyWith', () {
    const MyoroCarouselWidgetShowcaseThemeExtension().copyWith();
  });

  test('MyoroCarouselWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      const MyoroCarouselWidgetShowcaseThemeExtension().lerp(
        const MyoroCarouselWidgetShowcaseThemeExtension(),
        i,
      );
    }
  });
}
