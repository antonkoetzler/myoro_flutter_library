import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroDropdownTypeEnum.fake', () {
    final fakeEnum = MyoroDropdownTypeEnum.fake();
    expect(MyoroDropdownTypeEnum.values.contains(fakeEnum), isTrue);
  });

  test('MyoroDropdownTypeEnum.isOverlay', () {
    expect(MyoroDropdownTypeEnum.overlay.isOverlay, isTrue);
    expect(MyoroDropdownTypeEnum.expanding.isOverlay, isFalse);
    expect(MyoroDropdownTypeEnum.modal.isOverlay, isFalse);
    expect(MyoroDropdownTypeEnum.bottomSheet.isOverlay, isFalse);
  });

  test('MyoroDropdownTypeEnum.isExpanding', () {
    expect(MyoroDropdownTypeEnum.overlay.isExpanding, isFalse);
    expect(MyoroDropdownTypeEnum.expanding.isExpanding, isTrue);
    expect(MyoroDropdownTypeEnum.modal.isExpanding, isFalse);
    expect(MyoroDropdownTypeEnum.bottomSheet.isExpanding, isFalse);
  });

  test('MyoroDropdownTypeEnum.isModal', () {
    expect(MyoroDropdownTypeEnum.overlay.isModal, isFalse);
    expect(MyoroDropdownTypeEnum.expanding.isModal, isFalse);
    expect(MyoroDropdownTypeEnum.modal.isModal, isTrue);
    expect(MyoroDropdownTypeEnum.bottomSheet.isModal, isFalse);
  });

  test('MyoroDropdownTypeEnum.isBottomSheet', () {
    expect(MyoroDropdownTypeEnum.overlay.isBottomSheet, isFalse);
    expect(MyoroDropdownTypeEnum.expanding.isBottomSheet, isFalse);
    expect(MyoroDropdownTypeEnum.modal.isBottomSheet, isFalse);
    expect(MyoroDropdownTypeEnum.bottomSheet.isBottomSheet, isTrue);
  });
}
