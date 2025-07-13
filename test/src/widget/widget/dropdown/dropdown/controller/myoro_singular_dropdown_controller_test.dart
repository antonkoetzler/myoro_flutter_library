import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final controller = MyoroSingularDropdownController<String>();

  tearDown(controller.dispose);

  test('MyoroSingularDropdownController', () {
    final item = faker.lorem.word();
    controller.toggleItem(item);
    expect(controller.selectedItem, item);
    controller.clear();
    expect(controller.selectedItem, isNull);
  });
}
