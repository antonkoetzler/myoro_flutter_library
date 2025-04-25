import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final themeExtension1 = MyoroCarouselThemeExtension.fake();
  final themeExtension2 = MyoroCarouselThemeExtension.fake();

  test('MyoroCarouselThemeExtension.copyWith', () {
    expect(themeExtension1.copyWith(), themeExtension1);
    expect(
      themeExtension1.copyWith(
        previousItemButtonIcon: themeExtension2.previousItemButtonIcon,
        nextItemButtonIcon: themeExtension2.nextItemButtonIcon,
      ),
      themeExtension2,
    );
  });

  test('MyoroCarouselThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 0.1) {
      final lerpedThemeExtension = themeExtension1.lerp(themeExtension2, i);
      expect(
        lerpedThemeExtension.previousItemButtonIcon,
        myoroLerp(
          themeExtension1.previousItemButtonIcon,
          themeExtension2.previousItemButtonIcon,
          i,
        ),
      );
      expect(
        lerpedThemeExtension.nextItemButtonIcon,
        myoroLerp(themeExtension1.nextItemButtonIcon, themeExtension2.nextItemButtonIcon, i),
      );
    }
  });

  test('MyoroCarouselThemeExtension.toString', () {
    expect(
      themeExtension1.toString(),
      'MyoroCarouselThemeExtension(\n'
      '  previousItemButtonIcon: ${themeExtension1.previousItemButtonIcon},\n'
      '  nextItemButtonIcon: ${themeExtension1.nextItemButtonIcon},\n'
      ');',
    );
  });
}
