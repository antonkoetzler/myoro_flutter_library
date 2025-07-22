import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroGroupRadioConfiguration.fake', () {
    MyoroGroupRadioConfiguration.fake().copyWith(controllerProvided: false, radios: {faker.lorem.word(): false});
    MyoroGroupRadioConfiguration.fake(
      controllerProvided: true,
    ).copyWith(controllerProvided: false, radios: {faker.lorem.word(): false}).controller;
  });
}
