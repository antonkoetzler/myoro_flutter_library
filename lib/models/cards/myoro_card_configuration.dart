import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration of [MyoroCard].
class MyoroCardConfiguration extends Equatable {
  static const titleDefaultValue = '';

  /// Title of the card.
  final String title;

  /// Text style of [title].
  final TextStyle? titleTextStyle;

  /// Padding of [child] (not the [MyoroCard]).
  final EdgeInsets? padding;

  /// Width of [_Card].
  final double? width;

  /// Height of [_Card].
  final double? height;

  /// Constraints of [_Card].
  final BoxConstraints? constraints;

  /// Content of the card.
  final Widget child;

  const MyoroCardConfiguration({
    this.title = titleDefaultValue,
    this.titleTextStyle,
    this.padding,
    this.width,
    this.height,
    this.constraints,
    required this.child,
  });

  MyoroCardConfiguration.fake()
    : title = faker.randomGenerator.boolean() ? faker.lorem.word() : '',
      titleTextStyle =
          faker.randomGenerator.boolean()
              ? MyoroTypographyDesignSystem.instance.randomTextStyle
              : null,
      padding =
          faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      width =
          faker.randomGenerator.boolean()
              ? faker.randomGenerator.decimal(scale: 100)
              : null,
      height =
          faker.randomGenerator.boolean()
              ? faker.randomGenerator.decimal(scale: 100)
              : null,
      constraints =
          faker.randomGenerator.boolean() ? const BoxConstraints() : null,
      child = const SizedBox.shrink();

  MyoroCardConfiguration copyWith({
    String? title,
    TextStyle? titleTextStyle,
    bool titleTextStyleProvided = true,
    EdgeInsets? padding,
    bool paddingProvided = true,
    double? width,
    bool widthProvided = true,
    double? height,
    bool heightProvided = true,
    BoxConstraints? constraints,
    bool constraintsProvided = true,
    Widget? child,
  }) {
    return MyoroCardConfiguration(
      title: title ?? this.title,
      titleTextStyle:
          titleTextStyleProvided
              ? (titleTextStyle ?? this.titleTextStyle)
              : null,
      padding: paddingProvided ? (padding ?? this.padding) : null,
      width: widthProvided ? (width ?? this.width) : null,
      height: heightProvided ? (height ?? this.height) : null,
      constraints:
          constraintsProvided ? (constraints ?? this.constraints) : null,
      child: child ?? this.child,
    );
  }

  @override
  List<Object?> get props {
    return [title, titleTextStyle, padding, width, height, constraints, child];
  }

  @override
  String toString() =>
      'MyoroCardConfiguration(\n'
      '  title: $title,\n'
      '  titleTextStyle: $titleTextStyle,\n'
      '  padding: $padding,\n'
      '  width: $width,\n'
      '  height: $height,\n'
      '  constraints: $constraints,\n'
      '  child: $child,\n'
      ');';
}
