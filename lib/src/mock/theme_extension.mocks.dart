import 'package:flutter/material.dart';

/// Generic [ThemeExtension] mock for testing purposes.
class MockThemeExtension extends ThemeExtension<MockThemeExtension> {
  const MockThemeExtension();

  @override
  MockThemeExtension lerp(covariant ThemeExtension<MockThemeExtension>? other, double t) {
    return this;
  }

  @override
  MockThemeExtension copyWith() {
    return this;
  }
}
