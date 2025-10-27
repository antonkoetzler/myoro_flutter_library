import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_modal_style.g.dart';

/// Style model of [MyoroModal].
@immutable
@myoroModel
class MyoroModalStyle with _$MyoroModalStyleMixin {
  static MyoroModalStyle lerp(MyoroModalStyle? a, MyoroModalStyle? b, double t) {
    return MyoroModalStyle(
      constraints: BoxConstraints.lerp(a?.constraints, b?.constraints, t),
      primaryColor: Color.lerp(a?.primaryColor, b?.primaryColor, t),
      borderRadius: BorderRadius.lerp(a?.borderRadius, b?.borderRadius, t),
      bottomSheetBorderRadius: BorderRadius.lerp(a?.bottomSheetBorderRadius, b?.bottomSheetBorderRadius, t),
      border: Border.lerp(a?.border, b?.border, t),
      bottomSheetBorder: Border.lerp(a?.bottomSheetBorder, b?.bottomSheetBorder, t),
      padding: EdgeInsets.lerp(a?.padding, b?.padding, t),
      closeButtonPadding: EdgeInsets.lerp(a?.closeButtonPadding, b?.closeButtonPadding, t),
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      titleTextStyle: TextStyle.lerp(a?.titleTextStyle, b?.titleTextStyle, t),
      closeButtonIconConfiguration: MyoroIconConfiguration.lerp(
        a?.closeButtonIconConfiguration,
        b?.closeButtonIconConfiguration,
        t,
      ),
    );
  }

  /// Default constructor.
  const MyoroModalStyle({
    this.constraints,
    this.primaryColor,
    this.borderRadius,
    this.bottomSheetBorderRadius,
    this.border,
    this.bottomSheetBorder,
    this.padding,
    this.closeButtonPadding,
    this.spacing,
    this.titleTextStyle,
    this.closeButtonIconConfiguration,
  });

  /// Constraints of the modal.
  final BoxConstraints? constraints;

  /// Background [Color] of the modal.
  final Color? primaryColor;

  /// [BorderRadius] of the modal.
  final BorderRadius? borderRadius;

  /// [BorderRadius] of the bottom sheet modal.
  final BorderRadius? bottomSheetBorderRadius;

  /// [Border] of the modal.
  final Border? border;

  /// [Border] of the bottom sheet modal.
  final Border? bottomSheetBorder;

  /// Padding of everything in the modal.
  final EdgeInsets? padding;

  /// Padding of the close button.
  final EdgeInsets? closeButtonPadding;

  /// Spacing between the [_Header] and the contents of the modal.
  final double? spacing;

  /// Text style of [_Title].
  final TextStyle? titleTextStyle;

  /// [MyoroIconConfiguration] of [_CloseButton].
  final MyoroIconConfiguration? closeButtonIconConfiguration;
}
