import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final MyoroSingularDropdownConfiguration<String> configuration1 =
      _createConfiguration();
  final MyoroSingularDropdownConfiguration<String> configuration2 =
      _createConfiguration();

  test('MyoroSingularDropdownConfiguration.copyWith', () {
    expect(configuration1.copyWith(), configuration1);
    expect(
      configuration1.copyWith(
        label: configuration2.label,
        labelEnabled: configuration2.label != null,
        enabled: configuration2.enabled,
        allowItemClearing: configuration2.allowItemClearing,
        dataConfiguration: configuration2.dataConfiguration,
        menuItemBuilder: configuration2.menuItemBuilder,
        selectedItemBuilder: configuration2.selectedItemBuilder,
        initiallySelectedItem: configuration2.initiallySelectedItem,
        initiallySelectedItemEnabled:
            configuration2.initiallySelectedItem != null,
        onChanged: configuration2.onChanged,
        onChangedEnabled: configuration2.onChanged != null,
        checkboxOnChanged: configuration2.checkboxOnChanged,
        checkboxOnChangedEnabled: configuration2.checkboxOnChanged != null,
        controller:
            configuration2.controller
                as MyoroSingularDropdownController<String>,
      ),
      configuration2,
    );
  });

  test('MyoroSingularDropdownConfiguration.setInitiallySelectedItems', () {
    final MyoroSingularDropdownConfiguration<String> configuration =
        _createConfiguration();
    final bool enabled = faker.randomGenerator.boolean();
    configuration.controller.bloc = MyoroDropdownBloc<String>(enabled: enabled);
    configuration.setInitiallySelectedItems();
    // Won't emit a new state if [MyoroSingularDropdownConfiguration.initiallySelectedItem] is empty.
    if (configuration.initiallySelectedItem != null) {
      expectLater(
        configuration.controller.bloc.stream,
        emitsInOrder([
          MyoroDropdownState<String>(
            enabled: enabled,
            selectedItems: {configuration.initiallySelectedItem!},
          ),
        ]),
      );
    }
  });

  test('MyoroSingularDropdownConfiguration.handleOnChanged', () {
    bool onChangedExecuted = false;
    _createConfiguration()
        .copyWith(onChanged: (_) => onChangedExecuted = true)
        .handleOnChanged(const {});
    expect(onChangedExecuted, isTrue);
  });

  test('MyoroSingularDropdownConfiguration.handleCheckboxOnChanged', () {
    bool checkboxOnChangedExecuted = false;
    _createConfiguration()
        .copyWith(
          checkboxOnChanged: (_, __) => checkboxOnChangedExecuted = true,
        )
        .handleCheckboxOnChanged(faker.randomGenerator.boolean(), const {});
    expect(checkboxOnChangedExecuted, isTrue);
  });

  test('MyoroSingularDropdownConfiguration.checkboxOnChangedNotNull', () {
    expect(
      configuration1.checkboxOnChangedNotNull,
      configuration1.checkboxOnChanged != null,
    );
  });

  test('MyoroSingularDropdownConfiguration.toString', () {
    expect(
      configuration1.toString(),
      'MyoroSingularDropdownConfiguration<String>(\n'
      '  label: ${configuration1.label},\n'
      '  enabled: ${configuration1.enabled},\n'
      '  allowItemClearing: ${configuration1.allowItemClearing},\n'
      '  dataConfiguration: ${configuration1.dataConfiguration},\n'
      '  menuItemBuilder: ${configuration1.menuItemBuilder},\n'
      '  selectedItemBuilder: ${configuration1.selectedItemBuilder},\n'
      '  initiallySelectedItem: ${configuration1.initiallySelectedItem},\n'
      '  onChanged: ${configuration1.onChanged},\n'
      '  checkboxOnChanged: ${configuration1.checkboxOnChanged},\n'
      '  controller: ${configuration1.controller},\n'
      ');',
    );
  });
}

MyoroSingularDropdownConfiguration<String> _createConfiguration() {
  final items = List.generate(
    faker.randomGenerator.integer(9999),
    (int index) => '#$index: ${faker.randomGenerator.string(50)}',
  );

  return MyoroSingularDropdownConfiguration(
    label:
        faker.randomGenerator.boolean()
            ? faker.randomGenerator.string(50)
            : null,
    enabled: faker.randomGenerator.boolean(),
    allowItemClearing: faker.randomGenerator.boolean(),
    dataConfiguration: MyoroDataConfiguration(staticItems: items),
    menuItemBuilder: (String item) => MyoroMenuItem.fake().copyWith(text: item),
    selectedItemBuilder: (String item) => item,
    initiallySelectedItem:
        faker.randomGenerator.boolean()
            ? items[faker.randomGenerator.integer(items.length)]
            : null,
    onChanged: faker.randomGenerator.boolean() ? ((_) {}) : null,
    checkboxOnChanged: faker.randomGenerator.boolean() ? ((_, __) {}) : null,
  );
}
