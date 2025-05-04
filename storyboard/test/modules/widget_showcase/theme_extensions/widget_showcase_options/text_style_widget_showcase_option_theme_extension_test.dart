import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  const themeExtension1 = TextStyleWidgetShowcaseOptionThemeExtension.fake();
  const themeExtension2 = TextStyleWidgetShowcaseOptionThemeExtension.fake();

  test('TextStyleWidgetShowcaseOptionThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(themeExtension1.copyWith(), themeExtension2);
  });

  test('TextStyleWidgetShowcaseOptionThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      themeExtension1.lerp(themeExtension2, i);
    }
  });

  test('TextStyleWidgetShowcaseOptionThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'TextStyleWidgetShowcaseOptionThemeExtension(\n'
      ');',
    );
  });
}
