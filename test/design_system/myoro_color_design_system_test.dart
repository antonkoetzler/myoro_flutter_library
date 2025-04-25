import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroColorDesignSystem].
void main() {
  const primaryDarkModeColor = Color(0xFF181818);
  const primaryLightModeColor = Color(0xFFEFEFEF);

  test('MyoroColorDesignSystem', () {
    expect(MyoroColorDesignSystem.success, Colors.green);
    expect(MyoroColorDesignSystem.error, Colors.red);
    expect(MyoroColorDesignSystem.onError, Colors.white);
    expect(MyoroColorDesignSystem.transparent, Colors.transparent);
    expect(MyoroColorDesignSystem.attention, Colors.cyan);
  });

  test('MyoroDarkModeColorDesignSystem', () {
    expect(MyoroDarkModeColorDesignSystem.primary, primaryDarkModeColor);
    expect(MyoroDarkModeColorDesignSystem.secondary, primaryLightModeColor);
  });

  test('MyoroLightModeColorDesignSystem', () {
    expect(MyoroLightModeColorDesignSystem.primary, primaryLightModeColor);
    expect(MyoroLightModeColorDesignSystem.secondary, primaryDarkModeColor);
  });
}
