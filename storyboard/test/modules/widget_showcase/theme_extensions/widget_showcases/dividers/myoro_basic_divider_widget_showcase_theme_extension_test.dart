import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  const themeExtension1 = MyoroBasicDividerWidgetShowcaseThemeExtension.fake();
  const themeExtension2 = MyoroBasicDividerWidgetShowcaseThemeExtension.fake();

  test('MyoroBasicDividerWidgetShowcaseThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(themeExtension1.copyWith(), themeExtension2);
  });

  test('MyoroBasicDividerWidgetShowcaseThemeExtension.lerp', () {
    // for (double i = 0; i < 1; i += 0.1) {
    //   final lerpedThemeExtension = themeExtension1.lerp(themeExtension1, i);
    // }
  });

  test('MyoroBasicDividerWidgetShowcaseThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'MyoroBasicDividerWidgetShowcaseThemeExtension(\n'
      ');',
    );
  });
}
