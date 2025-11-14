import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_field_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroField].
@immutable
@myoroThemeExtension
class MyoroFieldThemeExtension extends ThemeExtension<MyoroFieldThemeExtension>
    with _$MyoroFieldThemeExtensionMixin
    implements MyoroFieldStyle {
  /// Default constructor.
  const MyoroFieldThemeExtension({this.labelTextStyle, this.dataTextStyle, this.spacing});

  /// Fake constructor.
  MyoroFieldThemeExtension.fake()
    : labelTextStyle = myoroNullableFake<TextStyle>(),
      dataTextStyle = myoroNullableFake<TextStyle>(),
      spacing = myoroNullableFake<double>();

  /// Builder constructor.
  MyoroFieldThemeExtension.builder(TextTheme textTheme)
    : labelTextStyle = textTheme.titleSmall,
      dataTextStyle = textTheme.bodySmall,
      spacing = kMyoroMultiplier;

  /// [TextStyle] of the label.
  @override
  final TextStyle? labelTextStyle;

  /// [TextStyle] of the data.
  @override
  final TextStyle? dataTextStyle;

  /// Spacing in between the label and the data.
  @override
  final double? spacing;

  @override
  MyoroFieldThemeExtension lerp(covariant MyoroFieldThemeExtension? other, double t) {
    if (other is! MyoroFieldThemeExtension) return this;
    final style = MyoroFieldStyle.lerp(this, other, t);
    return MyoroFieldThemeExtension(
      labelTextStyle: style.labelTextStyle,
      dataTextStyle: style.dataTextStyle,
      spacing: style.spacing,
    );
  }
}
