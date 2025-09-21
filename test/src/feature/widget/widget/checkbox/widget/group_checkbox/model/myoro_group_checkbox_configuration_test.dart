import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroGroupCheckboxConfiguration', () {
    MyoroGroupCheckboxConfiguration(direction: myoroFake<Axis>(), onChanged: (_, _) {});
  });

  test('MyoroGroupCheckboxConfiguration.copyWith', () {
    final firstConfiguration = MyoroGroupCheckboxConfiguration.fake();
    expect(firstConfiguration.copyWith(), firstConfiguration);
    final secondConfiguration = MyoroGroupCheckboxConfiguration.fake();
    expect(
      firstConfiguration.copyWith(
        direction: secondConfiguration.direction,
        onChanged: secondConfiguration.onChanged,
        onChangedProvided: secondConfiguration.onChanged != null,
      ),
      secondConfiguration,
    );
  });
}
