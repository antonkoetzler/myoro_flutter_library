import 'package:faker/faker.dart';
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
}
