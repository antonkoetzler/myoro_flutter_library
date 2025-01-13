import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroDatePickerInputThemeExtension].
void main() {
  const themeExtension = MyoroDatePickerInputThemeExtension();

  test('MyoroDatePickerInputThemeExtension.copyWith', () {
    themeExtension.copyWith();
  });

  test('MyoroDatePickerInputThemeExtension.lerp', () {
    for (double i = 0; i < faker.randomGenerator.decimal(); i += 0.1) {
      themeExtension.lerp(const MyoroDatePickerInputThemeExtension(), i);
    }
  });
}
