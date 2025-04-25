import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final themeExtension1 = MyoroSnackBarWidgetShowcaseThemeExtension.fake();
  final themeExtension2 = MyoroSnackBarWidgetShowcaseThemeExtension.fake();

  test('MyoroSnackBarWidgetShowcaseThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(
      themeExtension1.copyWith(
        inputStyle: themeExtension2.inputStyle,
        childIcon: themeExtension2.childIcon,
      ),
      themeExtension2,
    );
  });

  test('MyoroSnackBarWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.inputStyle,
        myoroLerp(themeExtension1.inputStyle, themeExtension2.inputStyle, i),
      );
      expect(
        lerpedThemeExtension.childIcon,
        myoroLerp(themeExtension1.childIcon, themeExtension2.childIcon, i),
      );
    }
  });

  test('MyoroSnackBarWidgetShowcaseThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'MyoroSnackBarWidgetShowcaseThemeExtension(\n'
      '  inputStyle: ${themeExtension1.inputStyle},\n'
      '  childIcon: ${themeExtension1.childIcon},\n'
      ');',
    );
  });
}
