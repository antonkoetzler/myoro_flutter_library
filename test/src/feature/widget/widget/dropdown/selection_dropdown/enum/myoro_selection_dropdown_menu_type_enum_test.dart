import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroSelectionDropdownMenuTypeEnum getters', () {
    expect(MyoroSelectionDropdownMenuTypeEnum.overlay.isOverlay, isTrue);
    expect(MyoroSelectionDropdownMenuTypeEnum.expanding.isExpanding, isTrue);
    expect(MyoroSelectionDropdownMenuTypeEnum.modal.isModal, isTrue);
  });
}
