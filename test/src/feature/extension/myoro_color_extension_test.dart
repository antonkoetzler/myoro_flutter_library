import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  const baseColor = Color(0xFF336699); // R: 51, G: 102, B: 153

  test('MyoroColorExtension.hexadecimalFormat', () {
    expect(baseColor.hexadecimalFormat, '#336699');
  });

  test('MyoroColorExtension.darken success case', () {
    final darker = baseColor.darken(0.2);
    expect(darker.computeLuminance(), lessThan(baseColor.computeLuminance()));
  });

  test('MyoroColorExtension.darken assertion cases', () {
    expect(() => baseColor.darken(-0.1), throwsA(isA<AssertionError>()));
    expect(() => baseColor.darken(1.1), throwsA(isA<AssertionError>()));
  });

  test('MyoroColorExtension.brighten success case', () {
    final brighter = baseColor.brighten(0.2);
    expect(brighter.computeLuminance(), greaterThan(baseColor.computeLuminance()));
  });

  test('MyoroColorExtension.brighten assertion cases', () {
    expect(() => baseColor.brighten(-0.1), throwsA(isA<AssertionError>()));
    expect(() => baseColor.brighten(1.1), throwsA(isA<AssertionError>()));
  });
}
