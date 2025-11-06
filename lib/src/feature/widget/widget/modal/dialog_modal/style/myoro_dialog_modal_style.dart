import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
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
      border: Border.lerp(a?.border, b?.border, t),
      contentPadding: EdgeInsets.lerp(a?.contentPadding, b?.contentPadding, t),
      closeButtonPadding: EdgeInsets.lerp(a?.closeButtonPadding, b?.closeButtonPadding, t),
      spacing: lerpDouble(a?.spacing, b?.spacing, t),
      titleTextStyle: TextStyle.lerp(a?.titleTextStyle, b?.titleTextStyle, t),
      closeButtonIconConfiguration: MyoroIconConfiguration.lerp(
        a?.closeButtonIconConfiguration,
        b?.closeButtonIconConfiguration,
        t,
      ),
      margin: EdgeInsets.lerp(a?.margin, b?.margin, t),
      textStyle: TextStyle.lerp(a?.textStyle, b?.textStyle, t),
      footerButtonsSpacing: lerpDouble(a?.footerButtonsSpacing, b?.footerButtonsSpacing, t),
    );
  }

  /// Default constructor.
  const MyoroDialogModalStyle({
    super.constraints,
    super.primaryColor,
    super.borderRadius,
    super.border,
    super.contentPadding,
    super.closeButtonPadding,
    super.spacing,
    super.titleTextStyle,
    super.closeButtonIconConfiguration,
    super.margin,
    this.textStyle,
    this.footerButtonsSpacing,
  });

  /// Fake constructor.
  factory MyoroDialogModalStyle.fake() {
    return MyoroDialogModalStyle(
      constraints: myoroNullableFake<BoxConstraints>(),
      primaryColor: myoroNullableFake<Color>(),
      borderRadius: myoroNullableFake<BorderRadius>(),
      border: myoroNullableFake<Border>(),
      contentPadding: myoroNullableFake<EdgeInsets>(),
      closeButtonPadding: myoroNullableFake<EdgeInsets>(),
      spacing: myoroNullableFake<double>(),
      titleTextStyle: myoroNullableFake<TextStyle>(),
      closeButtonIconConfiguration: faker.randomGenerator.boolean() ? MyoroIconConfiguration.fake() : null,
      margin: myoroNullableFake<EdgeInsets>(),
      textStyle: myoroNullableFake<TextStyle>(),
      footerButtonsSpacing: myoroNullableFake<double>(),
    );
  }

  /// Text style of the simple text option in [_Message].
  final TextStyle? textStyle;

  /// Spacing in between the buttons in [_FooterButtons].
  final double? footerButtonsSpacing;
}
