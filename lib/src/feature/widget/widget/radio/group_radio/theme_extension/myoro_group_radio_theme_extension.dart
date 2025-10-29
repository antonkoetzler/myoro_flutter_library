import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_group_radio_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroGroupRadio].
@immutable
@myoroThemeExtension
class MyoroGroupRadioThemeExtension extends ThemeExtension<MyoroGroupRadioThemeExtension>
    with _$MyoroGroupRadioThemeExtensionMixin
    implements MyoroGroupRadioStyle {
    /// Default constructor.
  const MyoroGroupRadioThemeExtension({this.spacing, this.runSpacing});

  /// Fake constructor.
  MyoroGroupRadioThemeExtension.fake()
    : spacing = myoroNullableFake<double>(),
      runSpacing = myoroNullableFake<double>();

  const MyoroGroupRadioThemeExtension.builder() : spacing = kMyoroMultiplier, runSpacing = kMyoroMultiplier;

  /// Main axis spacing in between each radio.
  @override
  final double? spacing;

  /// Cross axis spacing in between each radio.
  @override
  final double? runSpacing;

  @override
  MyoroGroupRadioThemeExtension lerp(covariant MyoroGroupRadioThemeExtension? other, double t) {
    if (other is! MyoroGroupRadioThemeExtension) return this;
    final style = MyoroGroupRadioStyle.lerp(this, other, t);
    return MyoroGroupRadioThemeExtension(spacing: style.spacing, runSpacing: style.runSpacing);
  }
}
