import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroColorExtension].
void main() {
  test('MyoroColorExtension.hexadecimalFormat', () {
    expect(Colors.black.hexadecimalFormat, '#000000');
    expect(Colors.white.hexadecimalFormat, '#FFFFFF');
    expect(const Color(0xFFEDE6D6).hexadecimalFormat, '#EDE6D6');
  });

  test('MyoroColorExtension.darken and MyoroColorExtension.brighten', () {
    final baseColor = myoroFake<Color>();
    final darkened = baseColor.darken(0.1);
    final brightened = baseColor.brighten(0.1);

    final hslBase = HSLColor.fromColor(baseColor);
    final hslDark = HSLColor.fromColor(darkened);
    final hslBright = HSLColor.fromColor(brightened);

    expect(hslDark.lightness, lessThan(hslBase.lightness));
    expect(hslBright.lightness, greaterThan(hslBase.lightness));
  });
}
