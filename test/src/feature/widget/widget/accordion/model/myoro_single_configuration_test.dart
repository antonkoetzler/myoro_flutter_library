import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  MyoroSingleAccordionConfiguration<String> buildConfiguration() {
    final items = List.generate(
      faker.randomGenerator.integer(10, min: 1),
      (i) => '#$i) ${faker.randomGenerator.string(10)}',
    ).toSet();
    final selectedItem = faker.randomGenerator.boolean()
        ? items.elementAt(faker.randomGenerator.integer(items.length))
        : null;
    return MyoroSingleAccordionConfiguration.fake(items: items, selectedItem: selectedItem);
  }

  test('MyoroSingleAccordionConfiguration.copyWith', () {
    final firstConfiguration = buildConfiguration();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = buildConfiguration();
    expect(
      firstConfiguration.copyWith(
        thumbVisibility: secondConfiguration.thumbVisibility,
        titleBuilder: secondConfiguration.titleBuilder,
        contentBuilder: secondConfiguration.contentBuilder,
        items: secondConfiguration.items,
        selectedItem: secondConfiguration.selectedItem,
        selectedItemProvided: secondConfiguration.selectedItem != null,
      ),
      secondConfiguration,
    );
  });
}
