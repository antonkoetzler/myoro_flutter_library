import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 1), (int index) => 'Item #$index').toSet();

  group('MyoroSingleDropdownConfiguration', () {
    test('constructor with required parameters', () {
      final menuConfiguration = MyoroSingleMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      );

      final configuration = MyoroSingleDropdownConfiguration<String>(menuConfiguration: menuConfiguration);

      expect(configuration, isA<MyoroSingleDropdownConfiguration<String>>());
      expect(configuration.menuConfiguration, menuConfiguration);
    });

    test('constructor with all parameters', () {
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
        dropdownType: MyoroDropdownTypeEnum.modal,
        targetKey: targetKey,
        menuConfiguration: menuConfiguration,
      );

      expect(configuration.dropdownType, MyoroDropdownTypeEnum.modal);
      expect(configuration.targetKey, targetKey);
      expect(configuration.menuConfiguration, menuConfiguration);
    });

    test('copyWith method', () {
      final menuConfiguration = MyoroSingleMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      );

      final configuration = MyoroSingleDropdownConfiguration<String>(menuConfiguration: menuConfiguration);

      final newMenuConfiguration = MyoroSingleMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      );

      final copiedConfiguration = configuration.copyWith(
        dropdownType: MyoroDropdownTypeEnum.overlay,
        menuConfiguration: newMenuConfiguration,
      );

      expect(copiedConfiguration.dropdownType, MyoroDropdownTypeEnum.overlay);
      expect(copiedConfiguration.menuConfiguration, newMenuConfiguration);
    });
  });
}
