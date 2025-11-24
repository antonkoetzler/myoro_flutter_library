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
    : spacing = myoroNullableFake<double>(),
      decoration = myoroNullableFake<BoxDecoration>(),
      contentPadding = myoroNullableFake<EdgeInsets>(),
      labelTextStyle = myoroNullableFake<MyoroTextStyle>(),
      dataTextStyle = myoroNullableFake<MyoroTextStyle>();

  /// Builder constructor.
  MyoroFieldThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : spacing = kMyoroMultiplier,
      decoration = BoxDecoration(
        color: colorScheme.onPrimary.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(kMyoroBorderRadius),
      ),
      contentPadding = const EdgeInsets.all(kMyoroMultiplier * 1.3),
      labelTextStyle = MyoroTextStyle(style: textTheme.titleSmall?.copyWith(fontSize: MyoroFontSizeEnum.tiny.size)),
      dataTextStyle = MyoroTextStyle(style: textTheme.bodySmall?.copyWith(fontSize: MyoroFontSizeEnum.tiny.size));

  /// Spacing in between the label and the data.
  @override
  final double? spacing;

  /// [BoxDecoration] of the field.
  @override
  final BoxDecoration? decoration;

  /// Content padding.
  @override
  final EdgeInsets? contentPadding;

  /// [MyoroTextStyle] of the label.
  @override
  final MyoroTextStyle? labelTextStyle;

  /// [MyoroTextStyle] of the data.
  @override
  final MyoroTextStyle? dataTextStyle;

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
