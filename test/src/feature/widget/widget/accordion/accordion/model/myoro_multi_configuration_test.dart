import 'package:faker/faker.dart';
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
}
