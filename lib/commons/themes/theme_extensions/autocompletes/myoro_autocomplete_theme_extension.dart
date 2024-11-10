import 'package:flutter/material.dart';

/// [ThemeExtension] for [MyoroAutocomplete].
final class MyoroAutocompleteThemeExtension extends ThemeExtension<MyoroAutocompleteThemeExtension> {
  const MyoroAutocompleteThemeExtension();

  @override
  MyoroAutocompleteThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroAutocompleteThemeExtension> lerp(
    covariant ThemeExtension<MyoroAutocompleteThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
