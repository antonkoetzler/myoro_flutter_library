import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroDropdownMenuTypeEnum.fake', () {
    MyoroDropdownMenuTypeEnum.fake();
  });

  test('MyoroDropdownMenuTypeEnum getters', () {
    expect(MyoroDropdownMenuTypeEnum.overlay.isOverlay, isTrue);
    expect(MyoroDropdownMenuTypeEnum.expanding.isExpanding, isTrue);
    expect(MyoroDropdownMenuTypeEnum.modal.isModal, isTrue);
  });
}
