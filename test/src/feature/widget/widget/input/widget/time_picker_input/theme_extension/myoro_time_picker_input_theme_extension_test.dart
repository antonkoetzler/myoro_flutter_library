import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroTimePickerInputThemeExtension.lerp', () {
    const MyoroTimePickerInputThemeExtension();
    const MyoroTimePickerInputThemeExtension.builder();

    const themeExtension1 = MyoroTimePickerInputThemeExtension.fake();
    const themeExtension2 = MyoroTimePickerInputThemeExtension.fake();

    for (double i = 0; i < 1; i += 0.1) {
      themeExtension1.lerp(themeExtension2, i);
    }
  });
}
