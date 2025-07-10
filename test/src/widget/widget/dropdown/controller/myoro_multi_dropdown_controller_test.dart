import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final controller = MyoroMultiDropdownController<String>();

  tearDown(controller.dispose);

  test('MyoroMultiDropdownController.toggleItem', () {
    const string1 = 'One';
    const string2 = 'Two';

    controller.toggleItem(string1);
    expect(controller.selectedItems, {string1});
    controller.toggleItem(string2);
    expect(controller.selectedItems, {string1, string2});
    controller.toggleItem(string1);
    expect(controller.selectedItems, {string2});
    controller.clear();
    expect(controller.selectedItems.isEmpty, isTrue);
  });
}
