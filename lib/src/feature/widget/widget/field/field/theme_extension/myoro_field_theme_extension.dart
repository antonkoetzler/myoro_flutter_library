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
  const MyoroFieldThemeExtension({
    this.labelTextStyle,
    this.dataTextStyle,
    this.spacing,
    this.decoration,
    this.contentPadding,
  });

  /// Fake constructor.
  MyoroFieldThemeExtension.fake()
    : labelTextStyle = myoroNullableFake<TextStyle>(),
      dataTextStyle = myoroNullableFake<TextStyle>(),
      spacing = myoroNullableFake<double>(),
      decoration = myoroNullableFake<BoxDecoration>(),
      contentPadding = myoroNullableFake<EdgeInsets>();

  /// Builder constructor.
  MyoroFieldThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : labelTextStyle = textTheme.titleSmall?.copyWith(fontSize: MyoroFontSizeEnum.tiny.size),
      dataTextStyle = textTheme.bodySmall?.copyWith(fontSize: MyoroFontSizeEnum.tiny.size),
      spacing = kMyoroMultiplier,
      decoration = BoxDecoration(
        color: colorScheme.onPrimary.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(kMyoroBorderRadius),
      ),
      contentPadding = const EdgeInsets.all(kMyoroMultiplier * 1.3);

  /// [TextStyle] of the label.
  @override
  final TextStyle? labelTextStyle;

  /// [TextStyle] of the data.
  @override
  final TextStyle? dataTextStyle;

  /// Spacing in between the label and the data.
  @override
  final double? spacing;

  /// [BoxDecoration] of the field.
  @override
  final BoxDecoration? decoration;

  /// Content padding.
  @override
  final EdgeInsets? contentPadding;

  @override
  MyoroFieldThemeExtension lerp(covariant MyoroFieldThemeExtension? other, double t) {
    if (other is! MyoroFieldThemeExtension) return this;
    final style = MyoroFieldStyle.lerp(this, other, t);
    return MyoroFieldThemeExtension(
      labelTextStyle: style.labelTextStyle,
      dataTextStyle: style.dataTextStyle,
      spacing: style.spacing,
      decoration: style.decoration,
      contentPadding: style.contentPadding,
    );
  }
}
