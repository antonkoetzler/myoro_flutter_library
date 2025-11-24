import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_text_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroText].
@immutable
@myoroThemeExtension
class MyoroTextThemeExtension extends ThemeExtension<MyoroTextThemeExtension>
    with _$MyoroTextThemeExtensionMixin
    implements MyoroTextStyle {
  /// Default value of [maxLines].
  static const maxLinesDefaultValue = MyoroTextStyle.maxLinesDefaultValue;

  /// Default value of [overflow].
  static const overflowDefaultValue = MyoroTextStyle.overflowDefaultValue;

  /// Default value of [alignment].
  static const alignmentDefaultValue = MyoroTextStyle.alignmentDefaultValue;

  /// Default constructor.
  const MyoroTextThemeExtension({
    this.maxLines = maxLinesDefaultValue,
    this.overflow = overflowDefaultValue,
    this.alignment = alignmentDefaultValue,
    this.style,
  });

  /// Fake constructor.
  MyoroTextThemeExtension.fake()
    : maxLines = faker.randomGenerator.integer(10, min: 1),
      overflow = myoroFake<TextOverflow>(),
      alignment = myoroFake<TextAlign>(),
      style = myoroNullableFake<TextStyle>();

  /// Builder constructor.
  MyoroTextThemeExtension.builder(TextTheme textTheme)
    : maxLines = MyoroTextStyle.maxLinesDefaultValue,
      overflow = MyoroTextStyle.overflowDefaultValue,
      alignment = MyoroTextStyle.alignmentDefaultValue,
      style = textTheme.bodyMedium;

  /// [MyoroTextStyle.maxLines].
  @override
  final int maxLines;

  /// [MyoroTextStyle.overflow].
  @override
  final TextOverflow overflow;

  /// [MyoroTextStyle.alignment].
  @override
  final TextAlign alignment;

  /// Style.
  @override
  final TextStyle? style;

  /// Lerp function.
  @override
  MyoroTextThemeExtension lerp(covariant MyoroTextThemeExtension? other, double t) {
    if (other is! MyoroTextThemeExtension) return this;
    final style = MyoroTextStyle.lerp(this, other, t);
    return copyWith(
      maxLines: style?.maxLines,
      overflow: style?.overflow,
      alignment: style?.alignment,
      style: style?.style,
    );
  }
}
