import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final themeExtension1 = MyoroDrawerWidgetShowcaseThemeExtension.fake();
  final themeExtension2 = MyoroDrawerWidgetShowcaseThemeExtension.fake();

  test('MyoroDrawerWidgetShowcaseThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(themeExtension1.copyWith(inputStyle: themeExtension2.inputStyle), themeExtension2);
  });

  test('MyoroDrawerWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.inputStyle,
        myoroLerp(themeExtension1.inputStyle, themeExtension2.inputStyle, i),
      );
    }
  });

  test('MyoroDrawerWidgetShowcaseThemeExtension.toString', () {
    expect(
      themeExtension1,
      'MyoroDrawerWidgetShowcaseThemeExtension(\n'
      '  inputStyle: ${themeExtension1.inputStyle},\n'
      ');',
    );
  });
}
