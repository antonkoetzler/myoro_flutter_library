import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final MyoroMultiDropdownConfiguration<String> configuration1 =
      _createConfiguration();
  final MyoroMultiDropdownConfiguration<String> configuration2 =
      _createConfiguration();

  test('MyoroMultiDropdownConfiguration.copyWith', () {
    expect(configuration1.copyWith(), configuration1);
    expect(
      configuration1.copyWith(
        label: configuration2.label,
        enabled: configuration2.enabled,
        allowItemClearing: configuration2.allowItemClearing,
        dataConfiguration: configuration2.dataConfiguration,
        menuItemBuilder: configuration2.menuItemBuilder,
        selectedItemBuilder: configuration2.selectedItemBuilder,
        initiallySelectedItems: configuration2.initiallySelectedItems,
        onChanged: configuration2.onChanged,
        onChangedEnabled: configuration2.onChanged != null,
        checkboxOnChanged: configuration2.checkboxOnChanged,
        checkboxOnChangedEnabled: configuration2.checkboxOnChangedNotNull,
        controller:
            configuration2.controller as MyoroMultiDropdownController<String>,
      ),
      configuration2,
    );
  });

  test('MyoroMultiDropdownConfiguration.setInitiallySelectedItems', () {
    final MyoroMultiDropdownConfiguration<String> configuration =
        _createConfiguration();
    final bool enabled = faker.randomGenerator.boolean();
    configuration.controller.bloc = MyoroDropdownBloc<String>(enabled: enabled);
    configuration.setInitiallySelectedItems();
    // Won't emit a new state if [MyoroMultiDropdownConfiguration.initiallySelectedItems] is empty.
    if (configuration.initiallySelectedItems.isNotEmpty) {
      expectLater(
        configuration.controller.bloc.stream,
        emitsInOrder([
          MyoroDropdownState<String>(
            enabled: enabled,
            selectedItems: configuration.initiallySelectedItems,
          ),
        ]),
      );
    }
  });

  test('MyoroMultiDropdownConfiguration.handleOnChanged', () {
    bool onChangedExecuted = false;
    _createConfiguration()
        .copyWith(onChanged: (_) => onChangedExecuted = true)
        .handleOnChanged(const {});
    expect(onChangedExecuted, isTrue);
  });

  test('MyoroMultiDropdownConfiguration.handleCheckboxOnChanged', () {
    bool checkboxOnChangedExecuted = false;
    _createConfiguration()
        .copyWith(
          checkboxOnChanged: (_, __) => checkboxOnChangedExecuted = true,
        )
        .handleCheckboxOnChanged(faker.randomGenerator.boolean(), const {});
    expect(checkboxOnChangedExecuted, isTrue);
  });

  test('MyoroMultiDropdownConfiguration.checkboxOnChangedNotNull', () {
    expect(
      configuration1.checkboxOnChangedNotNull,
      configuration1.checkboxOnChanged != null,
    );
  });

  test('MyoroMultiDropdownConfiguration.toString', () {
    expect(
      configuration1.toString(),
      'MyoroMultiDropdownConfiguration<String>(\n'
      '  label: ${configuration1.label},\n'
      '  enabled: ${configuration1.enabled},\n'
      '  allowItemClearing: ${configuration1.allowItemClearing},\n'
      '  dataConfiguration: ${configuration1.dataConfiguration},\n'
      '  menuItemBuilder: ${configuration1.menuItemBuilder},\n'
      '  selectedItemBuilder: ${configuration1.selectedItemBuilder},\n'
      '  initialSelectedItem: ${configuration1.initiallySelectedItems},\n'
      '  onChanged: ${configuration1.onChanged},\n'
      '  checkboxOnChanged: ${configuration1.checkboxOnChanged},\n'
      '  controller: ${configuration1.controller},\n'
      ');',
    );
  });
}

MyoroMultiDropdownConfiguration<String> _createConfiguration() {
  final Set<String> items =
      List.generate(
        faker.randomGenerator.integer(50),
        (int index) => '#$index ${faker.randomGenerator.string(50)}',
      ).toSet();

  return MyoroMultiDropdownConfiguration<String>(
    label: faker.randomGenerator.string(50, min: 0),
    enabled: faker.randomGenerator.boolean(),
    allowItemClearing: faker.randomGenerator.boolean(),
    dataConfiguration: MyoroDataConfiguration(staticItems: items.toList()),
    menuItemBuilder: (String item) => MyoroMenuItem.fake().copyWith(text: item),
    selectedItemBuilder: (String item) => item,
    initiallySelectedItems:
        faker.randomGenerator.boolean()
            ? List.generate(
              faker.randomGenerator.integer(items.length),
              (int index) => items.elementAt(index),
            ).toSet()
            : null,
    onChanged: faker.randomGenerator.boolean() ? ((_) {}) : null,
    checkboxOnChanged: faker.randomGenerator.boolean() ? ((_, __) {}) : null,
  );
}
