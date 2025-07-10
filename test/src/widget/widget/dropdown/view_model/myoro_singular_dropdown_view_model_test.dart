import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  bool onChangedExecuted = false;
  bool checkboxOnChangedExecuted = false;
  final item = faker.lorem.word();
  final configuration = MyoroSingularDropdownConfiguration<String>(
    menuConfiguration: MyoroMenuConfiguration(
      request: () => {item},
      itemBuilder: (item) => MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: item)),
    ),
    selectedItemBuilder: (item) => item,
    onChanged: (_) => onChangedExecuted = true,
    checkboxOnChanged: (_, _) => checkboxOnChangedExecuted = true,
  );
  final controller = MyoroSingularDropdownController<String>();
  final viewModel = MyoroSingularDropdownViewModel<String>(configuration, controller);

  tearDownAll(() {
    controller.dispose();
    viewModel.dispose();
  });

  test('MyoroSingularDropdownViewModel.enabledNotifierListener', () {
    controller.toggleEnabled();
    expect(checkboxOnChangedExecuted, isTrue);
  });

  test('MyoroSingularDropdownViewModel.selectedItemsControllerListener', () {
    controller.toggleItem(item);
    expect(onChangedExecuted, isTrue);
  });
}
