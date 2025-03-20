import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroSingularDropdownWidgetShowcaseThemeExtension].
void main() {
  test('MyoroSingularDropdownWidgetShowcaseThemeExtension.copyWith', () {
    const MyoroSingularDropdownWidgetShowcaseThemeExtension().copyWith();
  });

  test('MyoroSingularDropdownWidgetShowcaseThemeExtension.lerp', () {
    const MyoroSingularDropdownWidgetShowcaseThemeExtension().lerp(
      const MyoroSingularDropdownWidgetShowcaseThemeExtension(),
      faker.randomGenerator.decimal(),
    );
  });
}
