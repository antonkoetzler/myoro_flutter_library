import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [createMyoroTooltipThemeData].
void main() {
  test('createMyoroTooltipThemeData', () {
    final bool isDarkMode = faker.randomGenerator.boolean();
    final ColorScheme colorScheme = createMyoroColorScheme(isDarkMode);
    final TextTheme textTheme = createMyoroTextTheme(isDarkMode);
    final TooltipThemeData tooltipThemeData = createMyoroTooltipThemeData(colorScheme, textTheme);
    expect(
      tooltipThemeData,
      TooltipThemeData(
        decoration: BoxDecoration(
          color: colorScheme.primary,
          borderRadius: MyoroDecorationHelper.borderRadius,
          border: Border.all(
            width: 2,
            color: colorScheme.onPrimary,
          ),
        ),
        textStyle: textTheme.bodySmall,
        padding: const EdgeInsets.all(10),
      ),
    );
  });
}
