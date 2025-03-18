import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Unit test of [MyoroBasicDividerWidgetShowcaseThemeExtension].
void main() {
  final themeExtension1 = MyoroBasicDividerWidgetShowcaseThemeExtension.fake();
  final themeExtension2 = MyoroBasicDividerWidgetShowcaseThemeExtension.fake();

  test('MyoroBasicDividerWidgetShowcaseThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      buttonBordered: themeExtension2.buttonBordered,
    );
    expect(copiedThemeExtension.buttonBordered, themeExtension2.buttonBordered);
  });

  test('MyoroBasicDividerWidgetShowcaseThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.buttonBordered,
        myoroLerp(
          themeExtension1.buttonBordered,
          themeExtension2.buttonBordered,
          i,
        ),
      );
    }
  });
}
