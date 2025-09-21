import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

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
