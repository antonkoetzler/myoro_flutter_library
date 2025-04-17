import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when the hover of the button changes.
typedef MyoroHoverButtonOnHover = void Function(bool hovered);

/// Configuration model for passing the configuration members of [MyoroHoverButton].
final class MyoroHoverButtonConfiguration extends Equatable {
  /// 1. Color of the background when not hovered;
  /// 2. Color of the content when hovered.
  final Color? primaryColor;

  /// 1. Always the color of the border;
  /// 2. Color of the content when not hovered;
  /// 3. Color of the background when hovered.
  final Color? onPrimaryColor;

  /// If the button will already be hovered (there will be no hover effect).
  final bool? isHovered;

  /// Builds a rounded border if [true]; no border if [false].
  final bool? bordered;

  /// Border radius of the background.
  final BorderRadius? borderRadius;

  /// Tooltip message of the button.
  final String? tooltip;

  /// Function executed when the hover of the button changes.
  final MyoroHoverButtonOnHover? onHover;

  const MyoroHoverButtonConfiguration({this.primaryColor, this.onPrimaryColor, this.isHovered, this.bordered, this.borderRadius, this.tooltip, this.onHover});

  MyoroHoverButtonConfiguration copyWith({
    Color? primaryColor,
    bool primaryColorProvided = true,
    Color? onPrimaryColor,
    bool onPrimaryColorProvided = true,
    bool? isHovered,
    bool isHoveredProvided = true,
    bool? bordered,
    bool borderedProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    String? tooltip,
    bool tooltipProvided = true,
    MyoroHoverButtonOnHover? onHover,
    bool onHoverProvided = true,
  }) {
    return MyoroHoverButtonConfiguration(
      primaryColor: primaryColorProvided ? (primaryColor ?? this.primaryColor) : null,
      onPrimaryColor: onPrimaryColorProvided ? (onPrimaryColor ?? this.onPrimaryColor) : null,
      isHovered: isHoveredProvided ? (isHovered ?? this.isHovered) : null,
      bordered: borderedProvided ? (bordered ?? this.bordered) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? this.borderRadius) : null,
      tooltip: tooltipProvided ? (tooltip ?? this.tooltip) : null,
      onHover: onHoverProvided ? (onHover ?? this.onHover) : null,
    );
  }

  MyoroHoverButtonConfiguration.fake()
    : primaryColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      onPrimaryColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      isHovered = faker.randomGenerator.boolean(),
      bordered = faker.randomGenerator.boolean(),
      borderRadius = BorderRadius.circular(faker.randomGenerator.decimal(min: 0)),
      tooltip = faker.lorem.word(),
      onHover = null;

  static MyoroHoverButtonConfiguration lerp(MyoroHoverButtonConfiguration a, MyoroHoverButtonConfiguration b, double t) {
    return MyoroHoverButtonConfiguration(
      primaryColor: Color.lerp(a.primaryColor, b.primaryColor, t),
      onPrimaryColor: Color.lerp(a.onPrimaryColor, b.onPrimaryColor, t),
      isHovered: myoroLerp(a.isHovered, b.isHovered, t),
      bordered: myoroLerp(a.bordered, b.bordered, t),
      borderRadius: BorderRadius.lerp(a.borderRadius, b.borderRadius, t),
      tooltip: myoroLerp(a.tooltip, b.tooltip, t),
      onHover: myoroLerp(a.onHover, b.onHover, t),
    );
  }

  @override
  String toString() =>
      ''
      'MyoroHoverButtonConfiguration(\n'
      '  primaryColor: $primaryColor,\n'
      '  onPrimaryColor: $onPrimaryColor,\n'
      '  isHovered: $isHovered,\n'
      '  bordered: $bordered,\n'
      '  borderRadius: $borderRadius,\n'
      '  tooltip: $tooltip,\n'
      '  onHover: $onHover,\n'
      ');';

  @override
  List<Object?> get props {
    return [primaryColor, onPrimaryColor, isHovered, bordered, borderRadius, tooltip, onHover];
  }
}
