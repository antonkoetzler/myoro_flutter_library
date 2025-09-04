import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_card_style.g.dart';

/// Style model of [MyoroCard].
@immutable
@myoroModel
class MyoroCardStyle with _$MyoroCardStyleMixin {
  static const constraintsDefaultValue = BoxConstraints();

  const MyoroCardStyle({
    this.titleTextStyle,
    this.padding,
    this.constraints = constraintsDefaultValue,
    this.backgroundColor,
    this.border,
    this.borderRadius,
  });

  // coverage:ignore-start
  MyoroCardStyle.fake()
    : titleTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      padding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      constraints = myoroFake<BoxConstraints>(),
      backgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      border = faker.randomGenerator.boolean() ? myoroFake<Border>() : null,
      borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null;
  // coverage:ignore-end

  /// Text style of [MyoroCard.title].
  final TextStyle? titleTextStyle;

  /// Padding of [MyoroCard.child] (not the [MyoroCard]).
  final EdgeInsets? padding;

  /// Constraints of the [MyoroCard].
  final BoxConstraints constraints;

  /// Background [Color] of the [MyoroCard].
  final Color? backgroundColor;

  /// [Border] of the [MyoroCard].
  final Border? border;

  /// [BorderRadius] of the [MyoroCard].
  final BorderRadius? borderRadius;

  /// Copy with.
  MyoroCardStyle copyWith({
    TextStyle? titleTextStyle,
    bool titleTextStyleProvided = true,
    EdgeInsets? padding,
    bool paddingProvided = true,
    BoxConstraints? constraints,
    Color? backgroundColor,
    bool backgroundColorProvided = true,
    Border? border,
    bool borderProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
  }) {
    return MyoroCardStyle(
      titleTextStyle: titleTextStyleProvided ? (titleTextStyle ?? this.titleTextStyle) : null,
      padding: paddingProvided ? (padding ?? this.padding) : null,
      constraints: constraints ?? this.constraints,
      backgroundColor: backgroundColorProvided ? (backgroundColor ?? this.backgroundColor) : null,
      border: borderProvided ? (border ?? this.border) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? this.borderRadius) : null,
    );
  }
}
