import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_text_style.g.dart';

/// Generic text style.
@immutable
@myoroModel
class MyoroTextStyle with _$MyoroTextStyleMixin {
  static const maxLinesDefaultValue = 1;
  static const overflowDefaultValue = TextOverflow.ellipsis;
  static const alignmentDefaultValue = TextAlign.center;

  /// Lerp function.
  static MyoroTextStyle? lerp(MyoroTextStyle? primary, MyoroTextStyle? other, double t) {
    final maxLines = IntTween(
      begin: primary?.maxLines ?? maxLinesDefaultValue,
      end: other?.maxLines ?? maxLinesDefaultValue,
    ).lerp(t);
    final overflow = myoroFallbackLerp(primary?.overflow, other?.overflow, t);
    final alignment = myoroFallbackLerp(primary?.alignment, other?.alignment, t);
    final style = TextStyle.lerp(primary?.style, other?.style, t);

    return MyoroTextStyle(
      maxLines: maxLines,
      overflow: overflow ?? overflowDefaultValue,
      alignment: alignment ?? alignmentDefaultValue,
      style: style,
    );
  }

  /// Default constructor.
  const MyoroTextStyle({
    this.maxLines = maxLinesDefaultValue,
    this.overflow = overflowDefaultValue,
    this.alignment = alignmentDefaultValue,
    this.style,
  });

  MyoroTextStyle.fake()
    : maxLines = faker.randomGenerator.integer(10, min: 1),
      overflow = myoroFake<TextOverflow>(),
      alignment = myoroFake<TextAlign>(),
      style = myoroNullableFake<TextStyle>();

  /// [Text.maxLines]
  final int maxLines;

  /// [Text.overflow]
  final TextOverflow overflow;

  /// [Text.textAlign]
  final TextAlign alignment;

  /// [Text.style]
  final TextStyle? style;
}
