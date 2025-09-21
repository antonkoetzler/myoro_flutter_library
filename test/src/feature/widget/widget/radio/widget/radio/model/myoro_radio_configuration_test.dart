import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final controller = MyoroRadioController();

  tearDown(controller.dispose);

  test('MyoroRadioConfiguration.fake', () {
    MyoroRadioConfiguration.fake().copyWith(initialValueProvided: false, controller: controller);
    MyoroRadioConfiguration.fake(controllerProvided: true).controller;
  });
}
