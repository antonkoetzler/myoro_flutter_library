import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 1), (int index) => 'Item #$index').toSet();

  group('MyoroMultiDropdownConfiguration', () {
    test('constructor with required parameters', () {
      final menuConfiguration = MyoroMultiMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      );

      final configuration = MyoroMultiDropdownConfiguration<String>(menuConfiguration: menuConfiguration);

      expect(configuration, isA<MyoroMultiDropdownConfiguration<String>>());
      expect(configuration.menuConfiguration, menuConfiguration);
    });

    test('constructor with all parameters', () {
      final targetKey = GlobalKey();
      final menuConfiguration = MyoroMultiMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      );

      final configuration = MyoroMultiDropdownConfiguration<String>(
        dropdownType: MyoroDropdownTypeEnum.bottomSheet,
        targetKey: targetKey,
        menuConfiguration: menuConfiguration,
      );

      expect(configuration.dropdownType, MyoroDropdownTypeEnum.bottomSheet);
      expect(configuration.targetKey, targetKey);
      expect(configuration.menuConfiguration, menuConfiguration);
    });

    test('copyWith method', () {
      final menuConfiguration = MyoroMultiMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      );

      final configuration = MyoroMultiDropdownConfiguration<String>(menuConfiguration: menuConfiguration);

      final newMenuConfiguration = MyoroMultiMenuConfiguration<String>(
        request: () => items,
        itemBuilder: (item) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: item),
          ),
        ),
      );

      final copiedConfiguration = configuration.copyWith(
        dropdownType: MyoroDropdownTypeEnum.expanding,
        menuConfiguration: newMenuConfiguration,
      );

      expect(copiedConfiguration.dropdownType, MyoroDropdownTypeEnum.expanding);
      expect(copiedConfiguration.menuConfiguration, newMenuConfiguration);
    });
  });
}
