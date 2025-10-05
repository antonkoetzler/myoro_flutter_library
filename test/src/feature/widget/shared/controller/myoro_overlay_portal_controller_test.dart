import 'package:flutter_test/flutter_test.dart';

void main() {
  final controller = MyoroOverlayPortalController();

  tearDown(controller.dispose);

  test('MyoroOverlayPortalController', () {
    controller.show();
    expect(controller.isShowing, isTrue);
    controller.hide();
    expect(controller.isShowing, isFalse);
  });
}
