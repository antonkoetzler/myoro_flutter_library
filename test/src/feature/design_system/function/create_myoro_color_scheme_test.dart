import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('createMyoroColorScheme', () {
    final isDarkMode = faker.randomGenerator.boolean();
    final colorScheme = createMyoroColorScheme(isDarkMode);
    final brightness = isDarkMode ? Brightness.dark : Brightness.light;

    final primary = isDarkMode ? MyoroColors.gray1 : MyoroColors.gray2;
    final secondary = isDarkMode ? MyoroColors.gray2 : MyoroColors.gray1;

    expect(colorScheme.brightness, brightness);
    expect(colorScheme.primary, primary);
    expect(colorScheme.onPrimary, secondary);
    expect(colorScheme.secondary, primary);
    expect(colorScheme.onSecondary, secondary);
    expect(colorScheme.error, MyoroColors.red1);
    expect(colorScheme.onError, MyoroColors.gray3);
    expect(colorScheme.surface, primary);
    expect(colorScheme.onSurface, secondary);
  });
}
