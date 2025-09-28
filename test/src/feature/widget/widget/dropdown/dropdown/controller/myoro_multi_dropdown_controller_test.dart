import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 1), (int index) => 'Item #$index').toSet();

  group('MyoroMultiDropdownController', () {
    late MyoroMultiDropdownController<String> controller;

    setUp(() {
      final configuration = MyoroMultiDropdownConfiguration<String>(
        menuConfiguration: MyoroMultiMenuConfiguration<String>(
          request: () => items,
          itemBuilder: (item) => MyoroMenuItem(
            iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
              textConfiguration: MyoroTextConfiguration(text: item),
            ),
          ),
        ),
      );
      controller = MyoroMultiDropdownController<String>(configuration: configuration);
    });

    tearDown(() {
      controller.dispose();
    });

    test('constructor with configuration', () {
      expect(controller, isA<MyoroMultiDropdownController<String>>());
      expect(controller.configuration, isA<MyoroMultiDropdownConfiguration<String>>());
    });

    test('viewModel type', () {
      expect(controller, isA<MyoroMultiDropdownController<String>>());
    });
  });
}
