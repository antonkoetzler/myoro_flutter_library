import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroRadioWidgetShowcaseThemeExtension].
void main() {
  final themeExtension1 = MyoroRadioWidgetShowcaseThemeExtension.fake();
  final themeExtension2 = MyoroRadioWidgetShowcaseThemeExtension.fake();

  test('MyoroRadioWidgetShowcaseThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(inputStyle: themeExtension2.inputStyle);
    expect(copiedThemeExtension.inputStyle, themeExtension2.inputStyle);
  });

  test('MyoroRadioWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.inputStyle,
        myoroLerp(themeExtension1.inputStyle, themeExtension2.inputStyle, i),
      );
    }
  });
}
