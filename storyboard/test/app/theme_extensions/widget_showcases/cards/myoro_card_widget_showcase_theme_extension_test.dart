import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroCardWidgetShowcaseThemeExtension].
void main() {
  late final MyoroCardWidgetShowcaseThemeExtension themeExtension1;
  late final MyoroCardWidgetShowcaseThemeExtension themeExtension2;

  setUpAll(() {
    MyoroTypographyDesignSystem.textTheme = createMyoroTextTheme(
      faker.randomGenerator.boolean(),
    );
    themeExtension1 = MyoroCardWidgetShowcaseThemeExtension.fake();
    themeExtension2 = MyoroCardWidgetShowcaseThemeExtension.fake();
  });

  test('MyoroCardWidgetShowcaseThemeExtension.copyWith', () {
    MyoroCardWidgetShowcaseThemeExtension copiedThemeExtension =
        themeExtension1.copyWith();
    expect(copiedThemeExtension, themeExtension1);
    copiedThemeExtension = themeExtension1.copyWith(
      inputStyle: themeExtension2.inputStyle,
      titleOptionTextAlign: themeExtension2.titleOptionTextAlign,
      titleTextStyleOptionTextStyles:
          themeExtension2.titleTextStyleOptionTextStyles,
    );
    expect(copiedThemeExtension, themeExtension2);
  });

  test('MyoroCardWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.inputStyle,
        myoroLerp(themeExtension1.inputStyle, themeExtension2.inputStyle, i),
      );
      expect(
        lerpedThemeExtension.titleOptionTextAlign,
        myoroLerp(
          themeExtension1.titleOptionTextAlign,
          themeExtension2.titleOptionTextAlign,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.titleTextStyleOptionTextStyles,
        myoroLerp(
          themeExtension1.titleTextStyleOptionTextStyles,
          themeExtension2.titleTextStyleOptionTextStyles,
          i,
        ),
      );
    }
  });
}
