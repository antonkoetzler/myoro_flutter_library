import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroDropdownConfiguration].
void main() {
  final model = MyoroDropdownConfiguration<String>(
    label: faker.lorem.word(),
    labelTextStyle: null,
    dataConfiguration: MyoroDataConfiguration(staticItems: const []),
    itemBuilder: (_) => const MyoroMenuItem(text: ''),
    itemLabelBuilder: (_) => '',
    enabled: faker.randomGenerator.boolean(),
    allowItemClearing: faker.randomGenerator.boolean(),
    menuMaxHeight: faker.randomGenerator.decimal(),
    menuSearchCallback: null,
  );

  test('MyoroDataConfiguration.copyWith', () {
    final newModel = MyoroDropdownConfiguration<String>(
      label: faker.lorem.word(),
      labelTextStyle: null,
      dataConfiguration: MyoroDataConfiguration(staticItems: const []),
      itemBuilder: (_) => const MyoroMenuItem(text: ''),
      itemLabelBuilder: (_) => '',
      enabled: faker.randomGenerator.boolean(),
      allowItemClearing: faker.randomGenerator.boolean(),
      menuMaxHeight: faker.randomGenerator.decimal(),
      menuSearchCallback: null,
    );

    expect(
      model.copyWith(
        label: newModel.label,
        labelTextStyle: newModel.labelTextStyle,
        dataConfiguration: newModel.dataConfiguration,
        itemBuilder: newModel.itemBuilder,
        itemLabelBuilder: newModel.itemLabelBuilder,
        enabled: newModel.enabled,
        allowItemClearing: newModel.allowItemClearing,
        menuMaxHeight: newModel.menuMaxHeight,
        menuSearchCallback: newModel.menuSearchCallback,
      ),
      newModel,
    );
  });

  test('MyoroDataConfiguration.toString', () {
    expect(
      model.toString(),
      'MyoroDropdownConfiguration(\n'
      '  label: ${model.label},\n'
      '  labelTextStyle: ${model.labelTextStyle},\n'
      '  dataConfiguration: ${model.dataConfiguration},\n'
      '  itemBuilder: ${model.itemBuilder},\n'
      '  itemLabelBuilder: ${model.itemLabelBuilder},\n'
      '  enabled: ${model.enabled},\n'
      '  allowItemClearing: ${model.allowItemClearing},\n'
      '  menuMaxHeight: ${model.menuMaxHeight},\n'
      '  menuSearchCallback: ${model.menuSearchCallback},\n'
      ');',
    );
  });
}
