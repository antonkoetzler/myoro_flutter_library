import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroGroupCheckboxConfiguration', () {
    MyoroGroupCheckboxConfiguration(
      direction: myoroFake<Axis>(),
      spacing: faker.randomGenerator.decimal(),
      runSpacing: faker.randomGenerator.decimal(),
      onChanged: (_, _) {},
    );
  });
}
