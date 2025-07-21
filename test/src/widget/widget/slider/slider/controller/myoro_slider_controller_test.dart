import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final controller = MyoroSliderController();

  tearDownAll(controller.dispose);

  test('MyoroSliderController.setValue assertion case', () {
    expect(() => controller.setValue(MyoroSliderController.minValueDefaultValue - 1), throwsAssertionError);
  });

  test('MyoroSliderController.setValue success case', () {
    final value = faker.randomGenerator.decimal(
      scale: MyoroSliderController.maxValueDefaultValue,
      min: MyoroSliderController.minValueDefaultValue,
    );
    controller.setValue(value);
    expect(controller.value, value);
  });
}
