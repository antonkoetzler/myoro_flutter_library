import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 1), (int index) => 'Item #$index').toSet();

  group('MyoroDropdownController', () {
    late MyoroSingleDropdownController<String> controller;

    setUp(() {
      final configuration = MyoroSingleDropdownConfiguration<String>(
        menuConfiguration: MyoroSingleMenuConfiguration<String>(
          request: () => items,
          itemBuilder: (item) => MyoroMenuItem(
            iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
              textConfiguration: MyoroTextConfiguration(text: item),
            ),
          ),
        ),
      );
      controller = MyoroSingleDropdownController<String>(configuration: configuration);
    });

    tearDown(() {
      controller.dispose();
    });

    test('configuration getter', () {
      expect(controller.configuration, isA<MyoroSingleDropdownConfiguration<String>>());
    });

    test('configuration setter', () {
      final newConfiguration = MyoroSingleDropdownConfiguration<String>(
        menuConfiguration: MyoroSingleMenuConfiguration<String>(
          request: () => items,
          itemBuilder: (item) => MyoroMenuItem(
            iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
              textConfiguration: MyoroTextConfiguration(text: item),
            ),
          ),
        ),
      );
      controller.configuration = newConfiguration;
      expect(controller.configuration, newConfiguration);
    });

    test('toggle method', () {
      expect(controller.configuration, isA<MyoroSingleDropdownConfiguration<String>>());
      controller.toggle();
      controller.toggle();
    });

    test('enable method', () {
      controller.enable();
      controller.enable(); // Should not change state if already enabled
    });

    test('disable method', () {
      controller.enable();
      controller.disable();
      controller.disable(); // Should not change state if already disabled
    });

    test('dispose method', () {
      expect(() => controller.dispose(), returnsNormally);
    });
  });
}
