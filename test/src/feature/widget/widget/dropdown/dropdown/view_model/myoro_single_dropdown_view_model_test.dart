import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 1), (int index) => 'Item #$index').toSet();

  group('MyoroSingleDropdownViewModel', () {
    late MyoroSingleDropdownViewModel<String> viewModel;
    late MyoroSingleDropdownConfiguration<String> configuration;

    setUp(() {
      configuration = MyoroSingleDropdownConfiguration<String>(
        menuConfiguration: MyoroSingleMenuConfiguration<String>(
          request: () => items,
          itemBuilder: (item) => MyoroMenuItem(
            iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
              textConfiguration: MyoroTextConfiguration(text: item),
            ),
          ),
        ),
      );
      viewModel = MyoroSingleDropdownViewModel<String>(configuration);
    });

    tearDown(() {
      viewModel.dispose();
    });

    test('constructor with configuration', () {
      expect(viewModel, isA<MyoroSingleDropdownViewModel<String>>());
      expect(viewModel.state.configuration, configuration);
    });

    test('dropdownWidget getter', () {
      final dropdownWidget = viewModel.dropdownWidget;
      expect(dropdownWidget, isA<MyoroSingleMenu<String>>());
    });
  });
}
