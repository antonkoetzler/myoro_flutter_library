import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroCarouselThemeExtension].
void main() {
  final themeExtension1 = MyoroCarouselThemeExtension.fake();
  final themeExtension2 = MyoroCarouselThemeExtension.fake();

  test('MyoroCarouselThemeExtension.copyWith', () {
    final copiedThemeExtension = themeExtension1.copyWith(
      traversalButtonBordered: themeExtension2.traversalButtonBordered,
      previousItemButtonIcon: themeExtension2.previousItemButtonIcon,
      nextItemButtonIcon: themeExtension2.nextItemButtonIcon,
    );
    expect(copiedThemeExtension.traversalButtonBordered, themeExtension2.traversalButtonBordered);
    expect(copiedThemeExtension.previousItemButtonIcon, themeExtension2.previousItemButtonIcon);
    expect(copiedThemeExtension.nextItemButtonIcon, themeExtension2.nextItemButtonIcon);
  });

  test('MyoroCarouselThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.integer(1000); i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.traversalButtonBordered,
        myoroLerp(themeExtension1.traversalButtonBordered, themeExtension2.traversalButtonBordered, i),
      );
      expect(
        lerpedThemeExtension.previousItemButtonIcon,
        myoroLerp(themeExtension1.previousItemButtonIcon, themeExtension2.previousItemButtonIcon, i),
      );
      expect(
        lerpedThemeExtension.nextItemButtonIcon,
        myoroLerp(themeExtension1.nextItemButtonIcon, themeExtension2.nextItemButtonIcon, i),
      );
    }
  });
}
