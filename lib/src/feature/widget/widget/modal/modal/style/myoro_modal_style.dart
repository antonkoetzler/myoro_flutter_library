import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_modal_style.g.dart';

/// Style model of [MyoroModal].
@immutable
@myoroModel
class MyoroModalStyle with _$MyoroModalStyleMixin {
  /// Lerp function.
  static MyoroModalStyle lerp(MyoroModalStyle? a, MyoroModalStyle? b, double t) {
    return MyoroModalStyle(
      constraints: BoxConstraints.lerp(a?.constraints, b?.constraints, t),
      primaryColor: Color.lerp(a?.primaryColor, b?.primaryColor, t),
      borderRadius: BorderRadius.lerp(a?.borderRadius, b?.borderRadius, t),
      border: Border.lerp(a?.border, b?.border, t),
      contentPadding: EdgeInsets.lerp(a?.contentPadding, b?.contentPadding, t),
      closeButtonPadding: EdgeInsets.lerp(a?.closeButtonPadding, b?.closeButtonPadding, t),
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      titleTextStyle: TextStyle.lerp(a?.titleTextStyle, b?.titleTextStyle, t),
      closeButtonIcon: myoroFallbackLerp(a?.closeButtonIcon, b?.closeButtonIcon, t),
      closeButtonIconSize: lerpDouble(a?.closeButtonIconSize, b?.closeButtonIconSize, t),
      margin: EdgeInsets.lerp(a?.margin, b?.margin, t),
    );
  }

  /// Default constructor.
  const MyoroModalStyle({
    this.constraints,
    this.primaryColor,
    this.borderRadius,
    this.border,
    this.contentPadding,
    this.closeButtonPadding,
    this.spacing,
    this.titleTextStyle,
    this.closeButtonIcon,
    this.closeButtonIconSize,
    this.margin,
  });

  /// Fake constructor.
  factory MyoroModalStyle.fake() {
    return MyoroModalStyle(
      constraints: myoroNullableFake<BoxConstraints>(),
      primaryColor: myoroNullableFake<Color>(),
      borderRadius: myoroNullableFake<BorderRadius>(),
      border: myoroNullableFake<Border>(),
      contentPadding: myoroNullableFake<EdgeInsets>(),
      closeButtonPadding: myoroNullableFake<EdgeInsets>(),
      spacing: myoroNullableFake<double>(),
      titleTextStyle: myoroNullableFake<TextStyle>(),
      closeButtonIcon: myoroNullableFake<IconData>(),
      closeButtonIconSize: myoroNullableFake<double>(),
      margin: myoroNullableFake<EdgeInsets>(),
    );
  }

  /// Constraints of the modal.
  final BoxConstraints? constraints;

  /// Background [Color] of the modal.
  final Color? primaryColor;

  /// [BorderRadius] of the modal.
  final BorderRadius? borderRadius;

  /// [Border] of the modal.
  final Border? border;

  /// Padding of everything in the modal.
  final EdgeInsets? contentPadding;

  /// Padding of the close button.
  final EdgeInsets? closeButtonPadding;

  /// Spacing between the header and the contents of the modal.
  final double? spacing;

  /// Text style of the title.
  final TextStyle? titleTextStyle;

  /// [IconData] of the close button.
  final IconData? closeButtonIcon;

  /// Icon size of the close button.
  final double? closeButtonIconSize;

  /// Margin of the modal.
  final EdgeInsets? margin;
}
