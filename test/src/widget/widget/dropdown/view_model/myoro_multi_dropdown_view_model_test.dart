import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  bool onChangedExecuted = false;
  bool checkboxOnChangedExecuted = false;
  final item = faker.lorem.word();
  final configuration = MyoroMultiDropdownConfiguration<String>(
    menuConfiguration: MyoroMenuConfiguration(
      request: () => {item},
      itemBuilder: (item) => MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: item)),
    ),
    selectedItemBuilder: (item) => item,
    onChanged: (_) => onChangedExecuted = true,
    checkboxOnChanged: (_, _) => checkboxOnChangedExecuted = true,
  );
  final controller = MyoroMultiDropdownController<String>();
  final viewModel = MyoroMultiDropdownViewModel<String>(configuration, controller);

  tearDownAll(() {
    controller.dispose();
    viewModel.dispose();
  });

  test('MyoroMultiDropdownViewModel.enabledNotifierListener', () {
    controller.toggleEnabled();
    expect(checkboxOnChangedExecuted, isTrue);
  });

  test('MyoroMultiDropdownViewModel.selectedItemsControllerListener', () {
    controller.toggleItem(item);
    expect(onChangedExecuted, isTrue);
  });
}
