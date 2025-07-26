import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  const MyoroAppWidgetShowcaseScreenThemeExtension();

  test('MyoroAppWidgetShowcaseScreenThemeExtension.builder', () {
    const MyoroAppWidgetShowcaseScreenThemeExtension.builder();
  });

  test('MyoroAppWidgetShowcaseScreenThemeExtension.lerp', () {
    const themeExtension1 = MyoroAppWidgetShowcaseScreenThemeExtension.fake();
    const themeExtension2 = MyoroAppWidgetShowcaseScreenThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      themeExtension1.lerp(themeExtension2, i);
    }
  });
}
