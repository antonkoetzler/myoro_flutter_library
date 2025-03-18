import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroDrawerWidgetShowcaseThemeExtension].
void main() {
  final themeExtension1 = MyoroDrawerWidgetShowcaseThemeExtension.fake();
  final themeExtension2 = MyoroDrawerWidgetShowcaseThemeExtension.fake();

  test('MyoroDrawerWidgetShowcaseThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      buttonBordered: themeExtension2.buttonBordered,
      inputStyle: themeExtension2.inputStyle,
    );
    expect(copiedThemeExtension.buttonBordered, themeExtension2.buttonBordered);
    expect(copiedThemeExtension.inputStyle, themeExtension2.inputStyle);
  });

  test('MyoroDrawerWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.buttonBordered,
        myoroLerp(
            themeExtension1.buttonBordered, themeExtension2.buttonBordered, i),
      );
      expect(
        lerpedThemeExtension.inputStyle,
        myoroLerp(themeExtension1.inputStyle, themeExtension2.inputStyle, i),
      );
    }
  });
}
