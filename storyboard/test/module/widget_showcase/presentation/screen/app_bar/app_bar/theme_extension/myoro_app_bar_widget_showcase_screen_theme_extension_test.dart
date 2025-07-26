import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  const MyoroAppBarWidgetShowcaseScreenThemeExtension();

  test('MyoroAppBarWidgetShowcaseScreenThemeExtension.builder', () {
    const MyoroAppBarWidgetShowcaseScreenThemeExtension.builder();
  });

  test('MyoroAppBarWidgetShowcaseScreenThemeExtension.lerp', () {
    const themeExtension1 = MyoroAppBarWidgetShowcaseScreenThemeExtension.fake();
    const themeExtension2 = MyoroAppBarWidgetShowcaseScreenThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      themeExtension1.lerp(themeExtension2, i);
    }
  });
}
