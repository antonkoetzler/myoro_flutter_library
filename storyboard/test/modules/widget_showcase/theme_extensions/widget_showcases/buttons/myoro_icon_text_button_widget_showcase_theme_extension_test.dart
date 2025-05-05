import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  const themeExtension1 = MyoroIconTextButtonWidgetShowcaseThemeExtension.fake();
  const themeExtension2 = MyoroIconTextButtonWidgetShowcaseThemeExtension.fake();

  test('MyoroIconTextButtonWidgetShowcaseThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(themeExtension1.copyWith(), themeExtension2);
  });

  test('MyoroIconTextButtonWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      themeExtension1.lerp(themeExtension2, i);
    }
  });

  test('MyoroIconTextButtonWidgetShowcaseThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'MyoroIconTextButtonWidgetShowcaseThemeExtension(\n'
      ');',
    );
  });
}
