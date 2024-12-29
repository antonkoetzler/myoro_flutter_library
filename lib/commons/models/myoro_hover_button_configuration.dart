import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when the hover of the button changes.
typedef MyoroHoverButtonOnHover = Function(bool hovered);

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

  const MyoroHoverButtonConfiguration({
    this.primaryColor,
    this.onPrimaryColor,
    this.isHovered,
    this.bordered,
    this.borderRadius,
    this.tooltip,
    this.onHover,
  });

  MyoroHoverButtonConfiguration copyWith({
    Color? primaryColor,
    Color? onPrimaryColor,
    bool? isHovered,
    bool? bordered,
    BorderRadius? borderRadius,
    String? tooltip,
    MyoroHoverButtonOnHover? onHover,
  }) {
    return MyoroHoverButtonConfiguration(
      primaryColor: primaryColor ?? this.primaryColor,
      onPrimaryColor: onPrimaryColor ?? this.onPrimaryColor,
      isHovered: isHovered ?? this.isHovered,
      bordered: bordered ?? this.bordered,
      borderRadius: borderRadius ?? this.borderRadius,
      tooltip: tooltip ?? this.tooltip,
      onHover: onHover ?? this.onHover,
    );
  }

  static MyoroHoverButtonConfiguration lerp(MyoroHoverButtonConfiguration a, MyoroHoverButtonConfiguration b, double t) {
    return MyoroHoverButtonConfiguration(
      primaryColor: Color.lerp(a.primaryColor, b.primaryColor, t),
      onPrimaryColor: Color.lerp(a.onPrimaryColor, b.onPrimaryColor, t),
      isHovered: MyoroLerpHelper.lerp(a.isHovered, b.isHovered, t),
      bordered: MyoroLerpHelper.lerp(a.bordered, b.bordered, t),
      borderRadius: BorderRadius.lerp(a.borderRadius, b.borderRadius, t),
      tooltip: MyoroLerpHelper.lerp(a.tooltip, b.tooltip, t),
      onHover: MyoroLerpHelper.lerp(a.onHover, b.onHover, t),
    );
  }

  @override
  String toString() => ''
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
    return [
      primaryColor,
      onPrimaryColor,
      isHovered,
      bordered,
      borderRadius,
      tooltip,
      onHover,
    ];
  }
}
