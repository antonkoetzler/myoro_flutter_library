import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final controller = MyoroRadioController();

  tearDown(controller.dispose);

  test('MyoroRadioController.enabled', () {
    final oldValue = controller.enabled;
    controller.toggle();
    expect(controller.enabled, isNot(oldValue));
    controller.toggle(true);
    expect(controller.enabled, isTrue);
  });
}
