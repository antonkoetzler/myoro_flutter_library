import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  bool onChangedExecuted = false;
  bool checkboxOnChangedExecuted = false;
  final item = faker.lorem.word();
  final viewModel = MyoroSingularDropdownViewModel<String>(
    MyoroSingularDropdownConfiguration<String>(
      menuConfiguration: MyoroMenuConfiguration(
        request: () => {item},
        itemBuilder: (item) => MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: item)),
      ),
      selectedItemBuilder: (item) => item,
      onChanged: (_) => onChangedExecuted = true,
      checkboxOnChanged: (_, _) => checkboxOnChangedExecuted = true,
    ),
  );

  tearDownAll(viewModel.dispose);

  test('MyoroSingularDropdownViewModel.enabledNotifierListener', () {
    viewModel.toggleEnabled();
    expect(checkboxOnChangedExecuted, isTrue);
  });

  test('MyoroSingularDropdownViewModel.selectedItemsControllerListener', () {
    viewModel.toggleItem(item);
    expect(viewModel.state.selectedItems, {item});
    expect(onChangedExecuted, isTrue);
  });
}
