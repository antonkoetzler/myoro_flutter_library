import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  var onChangedExecuted = false;

  final viewModel = MyoroSliderViewModel();
  final controller = MyoroSliderController();
  final configuration = MyoroSliderConfiguration.fake().copyWith(onChanged: (_) => onChangedExecuted = true);

  tearDown(controller.dispose);

  test('MyoroSliderViewModel', () {
    viewModel
      ..controller = controller
      ..configuration = configuration;
    controller.setValue(
      faker.randomGenerator.decimal(
        scale: MyoroSliderController.maxValueDefaultValue,
        min: MyoroSliderController.minValueDefaultValue,
      ),
    );
    expect(onChangedExecuted, isTrue);
  });
}
