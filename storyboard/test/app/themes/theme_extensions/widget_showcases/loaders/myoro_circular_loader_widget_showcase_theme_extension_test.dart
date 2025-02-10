import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroCircularLoaderWidgetShowcaseThemeExtension].
void main() {
  test('MyoroCircularLoaderWidgetShowcaseThemeExtension.copyWith', () {
    const MyoroCircularLoaderWidgetShowcaseThemeExtension().copyWith();
  });

  test('MyoroCircularLoaderWidgetShowcaseThemeExtension.lerp', () {
    const MyoroCircularLoaderWidgetShowcaseThemeExtension().lerp(
      const MyoroCircularLoaderWidgetShowcaseThemeExtension(),
      faker.randomGenerator.decimal(),
    );
  });
}
