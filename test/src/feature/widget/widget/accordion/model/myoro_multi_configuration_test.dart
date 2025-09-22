import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  MyoroMultiAccordionConfiguration<String> buildConfiguration() {
    final items = List.generate(
      faker.randomGenerator.integer(10, min: 1),
      (i) => '#$i) ${faker.randomGenerator.string(10)}',
    ).toSet();
    final selectedItems = {if (faker.randomGenerator.boolean()) items.first};
    return MyoroMultiAccordionConfiguration<String>.fake(items: items, selectedItems: selectedItems);
  }

  test('MyoroMultiAccordionConfiguration.copyWith', () {
    final firstConfiguration = buildConfiguration();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = buildConfiguration();
    expect(
      firstConfiguration.copyWith(
        thumbVisibility: secondConfiguration.thumbVisibility,
        titleBuilder: secondConfiguration.titleBuilder,
        contentBuilder: secondConfiguration.contentBuilder,
        items: secondConfiguration.items,
        selectedItems: secondConfiguration.selectedItems,
      ),
      secondConfiguration,
    );
  });
}
