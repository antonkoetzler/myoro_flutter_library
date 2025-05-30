import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration of [MyoroCard].
class MyoroCardConfiguration extends Equatable {
  static const titleDefaultValue = '';
  static const constraintsDefaultValue = BoxConstraints();

  /// Title of the card.
  final String title;

  /// Text style of [title].
  final TextStyle? titleTextStyle;

  /// Padding of [child] (not the [MyoroCard]).
  final EdgeInsets? padding;

  /// Constraints of [_Card].
  final BoxConstraints constraints;

  /// Content of the card.
  final Widget child;

  const MyoroCardConfiguration({
    this.title = titleDefaultValue,
    this.titleTextStyle,
    this.padding,
    this.constraints = constraintsDefaultValue,
    required this.child,
  });

  MyoroCardConfiguration.fake()
    : title = faker.randomGenerator.boolean() ? faker.lorem.word() : '',
      titleTextStyle = faker.randomGenerator.boolean() ? MyoroTypographyDesignSystem.instance.randomTextStyle : null,
      padding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      constraints = myoroFake<BoxConstraints>(),
      child = const SizedBox.shrink();

  @override
  List<Object?> get props {
    return [title, titleTextStyle, padding, constraints, child];
  }

  MyoroCardConfiguration copyWith({
    String? title,
    TextStyle? titleTextStyle,
    bool titleTextStyleProvided = true,
    EdgeInsets? padding,
    bool paddingProvided = true,
    BoxConstraints? constraints,
    Widget? child,
  }) {
    return MyoroCardConfiguration(
      title: title ?? this.title,
      titleTextStyle: titleTextStyleProvided ? (titleTextStyle ?? this.titleTextStyle) : null,
      padding: paddingProvided ? (padding ?? this.padding) : null,
      constraints: constraints ?? this.constraints,
      child: child ?? this.child,
    );
  }

  @override
  String toString() =>
      'MyoroCardConfiguration(\n'
      '  title: $title,\n'
      '  titleTextStyle: $titleTextStyle,\n'
      '  padding: $padding,\n'
      '  child: $child,\n'
      ');';
}
