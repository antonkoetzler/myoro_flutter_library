import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [createMyoroTextSelectionThemeData].
void main() {
  test('createMyoroTextSelectionThemeData', () {
    final colorScheme = createMyoroColorScheme(faker.randomGenerator.boolean());
    final textSelectionThemeData = createMyoroTextSelectionThemeData(colorScheme);
    final translucentOnPrimary = colorScheme.onPrimary.withValues(alpha: 0.3);

    expect(
      textSelectionThemeData,
      TextSelectionThemeData(
        cursorColor: colorScheme.onPrimary,
        selectionColor: translucentOnPrimary,
        selectionHandleColor: translucentOnPrimary,
      ),
    );
  });
}
