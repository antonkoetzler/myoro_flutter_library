import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_filter_button_style.g.dart';

/// Style model of a filter button.
@immutable
@myoroModel
class MyoroFilterButtonStyle with _$MyoroFilterButtonStyleMixin {
  /// Lerp function.
  static MyoroFilterButtonStyle lerp(MyoroFilterButtonStyle? a, MyoroFilterButtonStyle? b, double t) {
    return MyoroFilterButtonStyle(
      actionButtonsSpacing: lerpDouble(a?.actionButtonsSpacing, b?.actionButtonsSpacing, t),
      closeButtonStyle: MyoroIconTextButtonStyle.lerp(a?.closeButtonStyle, b?.closeButtonStyle, t),
      clearButtonStyle: MyoroIconTextButtonStyle.lerp(a?.clearButtonStyle, b?.clearButtonStyle, t),
      applyButtonStyle: MyoroIconTextButtonStyle.lerp(a?.applyButtonStyle, b?.applyButtonStyle, t),
    );
  }

  /// Default constructor.
  const MyoroFilterButtonStyle({
    this.actionButtonsSpacing,
    this.closeButtonStyle,
    this.clearButtonStyle,
    this.applyButtonStyle,
  });

  /// Fake constructor.
  MyoroFilterButtonStyle.fake()
    : actionButtonsSpacing = myoroNullableFake<double>(),
      closeButtonStyle = myoroNullableFake<MyoroIconTextButtonStyle>(),
      clearButtonStyle = myoroNullableFake<MyoroIconTextButtonStyle>(),
      applyButtonStyle = myoroNullableFake<MyoroIconTextButtonStyle>();

  /// Spacing between the action buttons.
  final double? actionButtonsSpacing;

  /// [MyoroIconTextButtonStyle] of the close button.
  final MyoroIconTextButtonStyle? closeButtonStyle;

  /// [MyoroIconTextButtonStyle] of the clear button.
  final MyoroIconTextButtonStyle? clearButtonStyle;

  /// [MyoroIconTextButtonStyle] of the apply button.
  final MyoroIconTextButtonStyle? applyButtonStyle;
}
