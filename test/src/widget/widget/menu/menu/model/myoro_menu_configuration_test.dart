import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroMenuConfiguration', () {
    MyoroMenuConfiguration(
      request: () => {},
      itemBuilder: (_) => MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: faker.lorem.word())),
    );
  });
}
