import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroTableThemeExtension lerp', () {
    final theme1 = MyoroTableThemeExtension(
      backgroundColor: Colors.red,
      columnTextStyle: const TextStyle(fontSize: 12),
      columnSpacing: 8.0,
      rowTextStyle: const TextStyle(fontSize: 14),
      loaderEmptyMessageErrorMessagePadding: const EdgeInsets.all(16),
      emptyMessageTextStyle: const TextStyle(fontSize: 16),
      errorMessageTextStyle: const TextStyle(fontSize: 18),
    );

    final theme2 = MyoroTableThemeExtension(
      backgroundColor: Colors.blue,
      columnTextStyle: const TextStyle(fontSize: 16),
      columnSpacing: 12.0,
      rowTextStyle: const TextStyle(fontSize: 18),
      loaderEmptyMessageErrorMessagePadding: const EdgeInsets.all(20),
      emptyMessageTextStyle: const TextStyle(fontSize: 20),
      errorMessageTextStyle: const TextStyle(fontSize: 22),
    );

    final lerped = theme1.lerp(theme2, 0.5);

    expect(lerped.backgroundColor, isNotNull);
    expect(lerped.columnTextStyle, isNotNull);
    expect(lerped.columnSpacing, isNotNull);
    expect(lerped.rowTextStyle, isNotNull);
    expect(lerped.loaderEmptyMessageErrorMessagePadding, isNotNull);
    expect(lerped.emptyMessageTextStyle, isNotNull);
    expect(lerped.errorMessageTextStyle, isNotNull);
  });

  test('MyoroTableThemeExtension lerp with null values', () {
    final theme1 = MyoroTableThemeExtension();
    final theme2 = MyoroTableThemeExtension();

    final lerped = theme1.lerp(theme2, 0.5);

    expect(lerped.backgroundColor, isNull);
    expect(lerped.columnTextStyle, isNull);
    expect(lerped.columnSpacing, isNull);
    expect(lerped.rowTextStyle, isNull);
    expect(lerped.loaderEmptyMessageErrorMessagePadding, isNull);
    expect(lerped.emptyMessageTextStyle, isNull);
    expect(lerped.errorMessageTextStyle, isNull);
  });
}
