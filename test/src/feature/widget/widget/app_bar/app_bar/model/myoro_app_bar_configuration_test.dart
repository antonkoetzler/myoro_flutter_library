import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroAppBarConfiguration', () {
    MyoroAppBarConfiguration(
      bordered: faker.randomGenerator.boolean(),
      backgroundColor: myoroFake<Color>(),
      child: const SizedBox.shrink(),
    );
    MyoroAppBarConfiguration.fake();
    const MyoroAppBarConfiguration(child: SizedBox.shrink());
  });

  test('MyoroAppBarConfiguration.copyWith', () {
    final firstConfiguration = MyoroAppBarConfiguration.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroAppBarConfiguration.fake();
    expect(
      firstConfiguration.copyWith(
        bordered: secondConfiguration.bordered,
        backgroundColor: secondConfiguration.backgroundColor,
        backgroundColorProvided: secondConfiguration.backgroundColor != null,
        child: secondConfiguration.child,
      ),
      secondConfiguration,
    );
  });
}
