import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  const MyoroAppThemeExtension();
  const MyoroAppThemeExtension();
  const fake = MyoroAppThemeExtension.fake();
  const builder = MyoroAppThemeExtension.builder();

  test('MyoroAppThemeExtension.lerp', () {
    for (double i = 0; i < 1; i += 1) {
      fake.lerp(builder, i);
    }
  });
}
