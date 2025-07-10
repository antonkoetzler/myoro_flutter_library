import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroSingularDropdownConfiguration', () {
    final configuration = MyoroSingularDropdownConfiguration<String>(
      menuConfiguration: MyoroMenuConfiguration(
        request: () => {faker.lorem.word()},
        itemBuilder: (item) => MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: item)),
      ),
      selectedItemBuilder: (item) => item,
    );
    expect(configuration.checkboxOnChangedNotNull, isFalse);
  });
}
