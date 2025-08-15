import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  const MyoroFormThemeExtension();

  test('MyoroFormThemeExtension.lerp', () {
    const themeExtension1 = MyoroFormThemeExtension.fake();
    const themeExtension2 = MyoroFormThemeExtension.fake();

    for (double i = 0; i < 1; i += 0.1) {
      themeExtension1.lerp(themeExtension2, i);
    }
  });
}
