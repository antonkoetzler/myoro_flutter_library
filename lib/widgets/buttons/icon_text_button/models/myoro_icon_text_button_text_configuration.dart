import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_text_button_text_configuration.g.dart';

/// Text configuration of [MyoroIconTextButton].
@myoroModel
class MyoroIconTextButtonTextConfiguration with $MyoroIconTextButtonTextConfigurationMixin {
  static const maxLinesDefaultValue = 1;
  static const overflowDefaultValue = TextOverflow.ellipsis;
  static const alignmentDefaultValue = TextAlign.center;

  /// [Text.data]
  final String text;

  /// [Text.maxLines]
  final int maxLines;

  /// [Text.overflow]
  final TextOverflow overflow;

  /// [Text.textAlign]
  final TextAlign alignment;

  /// [Text.style]
  final TextStyle? style;

  const MyoroIconTextButtonTextConfiguration({
    required this.text,
    this.maxLines = maxLinesDefaultValue,
    this.overflow = overflowDefaultValue,
    this.alignment = alignmentDefaultValue,
    this.style,
  }) : assert(text.length != 0, '[MyoroIconTextButtonTextConfiguration]: [text] cannot be empty.');

  MyoroIconTextButtonTextConfiguration.fake()
    : text = faker.lorem.word(),
      maxLines = faker.randomGenerator.integer(10, min: 1),
      overflow = myoroFake<TextOverflow>(),
      alignment = myoroFake<TextAlign>(),
      style = faker.randomGenerator.boolean() ? MyoroTypographyDesignSystem.instance.randomTextStyle : null;
}
