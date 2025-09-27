import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroMenuThemeExtension lerp', () {
    final theme1 = MyoroMenuThemeExtension(
      constraints: const BoxConstraints(minWidth: 100, minHeight: 50),
      backgroundColor: Colors.red,
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(8),
      searchBarPadding: const EdgeInsets.all(16),
      searchBarInputStyle: MyoroInputStyleEnum.outlined,
      itemBorderRadius: BorderRadius.circular(4),
      dialogTextStyle: const TextStyle(fontSize: 14),
      dialogTextLoaderPadding: const EdgeInsets.all(12),
    );

    final theme2 = MyoroMenuThemeExtension(
      constraints: const BoxConstraints(minWidth: 200, minHeight: 100),
      backgroundColor: Colors.blue,
      border: Border.all(color: Colors.green),
      borderRadius: BorderRadius.circular(16),
      searchBarPadding: const EdgeInsets.all(20),
      searchBarInputStyle: MyoroInputStyleEnum.outlined,
      itemBorderRadius: BorderRadius.circular(8),
      dialogTextStyle: const TextStyle(fontSize: 16),
      dialogTextLoaderPadding: const EdgeInsets.all(16),
    );

    final lerped = theme1.lerp(theme2, 0.5);

    expect(lerped.constraints, isNotNull);
    expect(lerped.backgroundColor, isNotNull);
    expect(lerped.border, isNotNull);
    expect(lerped.borderRadius, isNotNull);
    expect(lerped.searchBarPadding, isNotNull);
    expect(lerped.searchBarInputStyle, isNotNull);
    expect(lerped.itemBorderRadius, isNotNull);
    expect(lerped.dialogTextStyle, isNotNull);
    expect(lerped.dialogTextLoaderPadding, isNotNull);
  });

  test('MyoroMenuThemeExtension lerp with null values', () {
    const theme1 = MyoroMenuThemeExtension();
    const theme2 = MyoroMenuThemeExtension();

    final lerped = theme1.lerp(theme2, 0.5);

    expect(lerped.constraints, isNull);
    expect(lerped.backgroundColor, isNull);
    expect(lerped.border, isNull);
    expect(lerped.borderRadius, isNull);
    expect(lerped.searchBarPadding, isNull);
    expect(lerped.searchBarInputStyle, isNull);
    expect(lerped.itemBorderRadius, isNull);
    expect(lerped.dialogTextStyle, isNull);
    expect(lerped.dialogTextLoaderPadding, isNull);
  });

  test('MyoroMenuThemeExtension lerp with different type returns this', () {
    const theme = MyoroMenuThemeExtension();
    final result = theme.lerp(const MyoroMenuThemeExtension(), 0.5);
    expect(result, equals(theme));
  });
}
