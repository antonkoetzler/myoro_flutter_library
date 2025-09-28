import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 1), (int index) => 'Item #$index').toSet();

  group('MyoroDropdownConfiguration', () {
    test('default values', () {
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

      expect(configuration.dropdownType, MyoroDropdownConfiguration.dropdownTypeDefaultValue);
      expect(configuration.targetKey, isNull);
      expect(configuration.menuConfiguration, isA<MyoroSingleMenuConfiguration<String>>());
    });

    test('custom values', () {
      final targetKey = GlobalKey();
      final menuConfiguration = MyoroSingleMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      );

      final configuration = MyoroSingleDropdownConfiguration<String>(
        dropdownType: MyoroDropdownTypeEnum.overlay,
        targetKey: targetKey,
        menuConfiguration: menuConfiguration,
      );

      expect(configuration.dropdownType, MyoroDropdownTypeEnum.overlay);
      expect(configuration.targetKey, targetKey);
      expect(configuration.menuConfiguration, menuConfiguration);
    });
  });
}
