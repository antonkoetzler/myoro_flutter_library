import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  MyoroGroupRadioItems createRadios() {
    var valueSet = false;
    final items = <String, bool>{};
    for (int i = 0; i < faker.randomGenerator.integer(10, min: 1); i += 1) {
      final value = faker.randomGenerator.boolean() && !valueSet;
      items['Item #$i'] = value;
      if (value) valueSet = true;
    }
    return items;
  }

  group('MyoroGroupRadioController.radiosAreValid', () {
    test('MyoroGroupRadioController.radiosAreValid invalid case', () {
      expect(MyoroGroupRadioController.radiosAreValid({}), isFalse);
      expect(MyoroGroupRadioController.radiosAreValid({for (int i = 0; i < 2; i += 1) 'Item #$i': true}), isFalse);
    });

    test('MyoroGroupRadioController.radiosAreValid valid case', () {
      expect(MyoroGroupRadioController.radiosAreValid(createRadios()), isTrue);
    });
  });

  test('MyoroGroupRadioController.enable', () {
    final controller = MyoroGroupRadioController(createRadios());

    // Make sure a random radio is enabled.
    var randomIndex = faker.randomGenerator.integer(controller.radios.entries.length);
    var randomRadioKey = controller.radios.entries.elementAt(randomIndex).key;
    controller.enable(randomRadioKey);

    // Confirm that when the enabled key is pressed again nothing happens.
    final enabledKey = controller.enabledKey;
    controller.enable(enabledKey);
    expect(controller.enabledKey, enabledKey);

    // Confirm that the current value is disabled and another is enabled when a radio only than the selected one is pressed.
    final disabledRadios = controller.radios..removeWhere((key, _) => key != controller.enabledKey);
    randomIndex = faker.randomGenerator.integer(disabledRadios.entries.length);
    randomRadioKey = disabledRadios.entries.elementAt(randomIndex).key;
    controller.enable(randomRadioKey);
    expect(controller.enabledKey, randomRadioKey);
  });

  test('MyoroGroupRadioController.clear', () {
    final controller = MyoroGroupRadioController(createRadios());

    // Make sure a random radio is enabled, then clear it.
    final randomIndex = faker.randomGenerator.integer(controller.radios.entries.length);
    final randomRadioKey = controller.radios.entries.elementAt(randomIndex).key;
    controller
      ..enable(randomRadioKey)
      ..clear();

    // Confirm none are selected.
    expect(controller.radios, controller.disabledItems);
  });
}
