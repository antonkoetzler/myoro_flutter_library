import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroCheckboxWidgetShowcaseThemeExtension].
void main() {
  const themeExtension1 = MyoroCheckboxWidgetShowcaseThemeExtension.fake();
  const themeExtension2 = MyoroCheckboxWidgetShowcaseThemeExtension.fake();

  test('MyoroCheckboxWidgetShowcaseThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(themeExtension1.copyWith(), themeExtension2);
  });

  test('MyoroCheckboxWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      themeExtension1.lerp(themeExtension2, i);
    }
  });
}
