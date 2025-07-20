import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  const MyoroScreenThemeExtension();

  test('MyoroScreenThemeExtension.builder', () {
    const MyoroScreenThemeExtension.builder();
  });

  test('MyoroScreenThemeExtension.lerp', () {
    const themeExtension1 = MyoroScreenThemeExtension.fake();
    const themeExtension2 = MyoroScreenThemeExtension.fake();
    for (double i = 0; i < 1; i += 0.1) {
      themeExtension1.lerp(themeExtension2, i);
    }
  });
}
