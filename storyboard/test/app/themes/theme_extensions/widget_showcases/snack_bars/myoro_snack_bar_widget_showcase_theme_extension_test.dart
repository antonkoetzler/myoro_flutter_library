import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroSnackBarWidgetShowcaseThemeExtension].
void main() {
  final themeExtension1 = MyoroSnackBarWidgetShowcaseThemeExtension.fake();
  final themeExtension2 = MyoroSnackBarWidgetShowcaseThemeExtension.fake();

  test('MyoroSnackBarWidgetShowcaseThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      inputStyle: themeExtension2.inputStyle,
      widgetBordered: themeExtension2.widgetBordered,
      childIcon: themeExtension2.childIcon,
    );
    expect(copiedThemeExtension.inputStyle, themeExtension2.inputStyle);
    expect(copiedThemeExtension.widgetBordered, themeExtension2.widgetBordered);
    expect(copiedThemeExtension.childIcon, themeExtension2.childIcon);
  });

  test('MyoroSnackBarWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.inputStyle,
        myoroLerp(themeExtension1.inputStyle, themeExtension2.inputStyle, i),
      );
      expect(
        lerpedThemeExtension.widgetBordered,
        myoroLerp(themeExtension1.widgetBordered, themeExtension2.widgetBordered, i),
      );
      expect(
        lerpedThemeExtension.childIcon,
        myoroLerp(themeExtension1.childIcon, themeExtension2.childIcon, i),
      );
    }
  });
}
