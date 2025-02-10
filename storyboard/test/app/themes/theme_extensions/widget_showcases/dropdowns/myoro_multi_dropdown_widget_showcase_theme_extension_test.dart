import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroMultiDropdownWidgetShowcaseThemeExtension].
void main() {
  test('MyoroMultiDropdownWidgetShowcaseThemeExtension.copyWith', () {
    const MyoroMultiDropdownWidgetShowcaseThemeExtension().copyWith();
  });

  test('MyoroMultiDropdownWidgetShowcaseThemeExtension.lerp', () {
    const MyoroMultiDropdownWidgetShowcaseThemeExtension().lerp(
      const MyoroMultiDropdownWidgetShowcaseThemeExtension(),
      faker.randomGenerator.decimal(),
    );
  });
}
