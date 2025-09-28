import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 1), (int index) => 'Item #$index').toSet();

  group('MyoroMultiDropdownViewModel', () {
    late MyoroMultiDropdownViewModel<String> viewModel;
    late MyoroMultiDropdownConfiguration<String> configuration;

    setUp(() {
      configuration = MyoroMultiDropdownConfiguration<String>(
        menuConfiguration: MyoroMultiMenuConfiguration<String>(
          request: () => items,
          itemBuilder: (item) => MyoroMenuItem(
            iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
              textConfiguration: MyoroTextConfiguration(text: item),
            ),
          ),
        ),
      );
      viewModel = MyoroMultiDropdownViewModel<String>(configuration);
    });

    tearDown(() {
      viewModel.dispose();
    });

    test('constructor with configuration', () {
      expect(viewModel, isA<MyoroMultiDropdownViewModel<String>>());
      expect(viewModel.state.configuration, configuration);
    });

    test('dropdownWidget getter', () {
      final dropdownWidget = viewModel.dropdownWidget;
      expect(dropdownWidget, isA<MyoroMultiMenu<String>>());
    });
  });
}
