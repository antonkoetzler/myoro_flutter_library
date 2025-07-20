import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroSearchInputConfiguration.fake', () {
    final configuration = MyoroSearchInputConfiguration<String>.fake();
    configuration.request(faker.lorem.word());
    configuration.itemBuilder(faker.lorem.word());
  });
}
