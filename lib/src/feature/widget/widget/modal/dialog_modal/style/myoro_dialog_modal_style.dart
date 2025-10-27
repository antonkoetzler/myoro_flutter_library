import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dialog_modal_style.g.dart';

/// Style model of [MyoroDialogModal].
@immutable
@myoroModel
class MyoroDialogModalStyle extends MyoroModalStyle with _$MyoroDialogModalStyleMixin {
  /// Lerp function.
  static MyoroDialogModalStyle lerp(MyoroDialogModalStyle? a, MyoroDialogModalStyle? b, double t) {
    return MyoroDialogModalStyle(
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
      textStyle: TextStyle.lerp(a?.textStyle, b?.textStyle, t),
      footerButtonsSpacing: lerpDouble(a?.footerButtonsSpacing, b?.footerButtonsSpacing, t),
    );
  }

  /// Default constructor.
  const MyoroDialogModalStyle({
    super.constraints,
    super.primaryColor,
    super.borderRadius,
    super.bottomSheetBorderRadius,
    super.border,
    super.bottomSheetBorder,
    super.padding,
    super.closeButtonPadding,
    super.spacing,
    super.titleTextStyle,
    super.closeButtonIconConfiguration,
    this.textStyle,
    this.footerButtonsSpacing,
  });

  /// Text style of the simple text option in [_Message].
  final TextStyle? textStyle;

  /// Spacing in between the buttons in [_FooterButtons].
  final double? footerButtonsSpacing;
}
