import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_card_style.g.dart';

/// Style model of [MyoroCard].
@immutable
@myoroModel
class MyoroCardStyle with _$MyoroCardStyleMixin {
  const MyoroCardStyle({
    this.backgroundColor,
    this.border,
    this.borderRadius,
    this.padding,
    this.titleCardSpacing,
    this.titleTextStyle,
    this.constraints,
  });

  // coverage:ignore-start
  MyoroCardStyle.fake()
    : backgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      border = faker.randomGenerator.boolean() ? myoroFake<Border>() : null,
      borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      padding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      titleCardSpacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      titleTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      constraints = faker.randomGenerator.boolean() ? myoroFake<BoxConstraints>() : null;
  // coverage:ignore-end

  /// Background color of the card.
  final Color? backgroundColor;

  /// Border of the card.
  final Border? border;

  /// Border radius of the card.
  final BorderRadius? borderRadius;

  /// Padding of [MyoroCard.child].
  final EdgeInsets? padding;

  /// Spacing in between [_Title] & [_Card].
  final double? titleCardSpacing;

  /// Text style of [MyoroCard.title].
  final TextStyle? titleTextStyle;

  /// [BoxConstraints]
  final BoxConstraints? constraints;

  /// Copy with.
}
