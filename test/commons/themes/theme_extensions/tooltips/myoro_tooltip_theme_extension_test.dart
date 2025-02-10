import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test [MyoroTooltipThemeExtension].
void main() {
  final themeExtension1 = MyoroTooltipThemeExtension.fake();
  final themeExtension2 = MyoroTooltipThemeExtension.fake();

  test('MyoroTooltipThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(waitDuration: themeExtension2.waitDuration);
    expect(copiedThemeExtension.waitDuration, themeExtension2.waitDuration);
  });

  test('MyoroTooltipThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.waitDuration,
        myoroLerp(themeExtension1.waitDuration, themeExtension2.waitDuration, i),
      );
    }
  });
}
