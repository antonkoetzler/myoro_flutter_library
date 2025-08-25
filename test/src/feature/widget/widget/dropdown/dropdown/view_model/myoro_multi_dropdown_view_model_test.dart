import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  bool onChangedExecuted = false;
  bool checkboxOnChangedExecuted = false;
  final item = faker.lorem.word();
  final viewModel = MyoroMultiDropdownViewModel(
    MyoroMultiDropdownConfiguration<String>(
      menuConfiguration: MyoroMultiMenuConfiguration(
        request: () => {item},
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      ),
      selectedItemBuilder: (item) => item,
      onChanged: (_) => onChangedExecuted = true,
      checkboxOnChanged: (_, _) => checkboxOnChangedExecuted = true,
    ),
  );

  tearDownAll(viewModel.dispose);

  test('MyoroMultiDropdownViewModel.enabledNotifierListener', () {
    viewModel.toggleEnabled();
    expect(checkboxOnChangedExecuted, isTrue);
  });

  test('MyoroMultiDropdownViewModel.selectedItemsControllerListener', () {
    viewModel.state.menuController.toggleItem(item);
    expect(onChangedExecuted, isTrue);
  });
}
