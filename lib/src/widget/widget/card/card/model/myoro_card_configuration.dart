import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_card_configuration.g.dart';

/// Configuration of [MyoroCard].
@immutable
@myoroModel
class MyoroCardConfiguration with _$MyoroCardConfigurationMixin {
  static const titleDefaultValue = '';
  static const constraintsDefaultValue = BoxConstraints();

  const MyoroCardConfiguration({
    this.title = titleDefaultValue,
    this.titleTextStyle,
    this.padding,
    this.constraints = constraintsDefaultValue,
    required this.child,
  });

  // coverage:ignore-start
  MyoroCardConfiguration.fake()
    : title = faker.randomGenerator.boolean() ? faker.lorem.word() : titleDefaultValue,
      titleTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      padding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      constraints = myoroFake<BoxConstraints>(),
      child = const SizedBox.shrink();
  // coverage:ignore-end

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
}
