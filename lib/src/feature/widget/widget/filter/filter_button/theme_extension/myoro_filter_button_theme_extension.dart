import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_filter_button_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroFilterButton].
@immutable
@myoroThemeExtension
class MyoroFilterButtonThemeExtension extends ThemeExtension<MyoroFilterButtonThemeExtension>
    with _$MyoroFilterButtonThemeExtensionMixin
    implements MyoroFilterButtonStyle {
  /// Default constructor.
  const MyoroFilterButtonThemeExtension({
    this.actionButtonsSpacing,
    this.closeButtonStyle,
    this.clearButtonStyle,
    this.applyButtonStyle,
  });

  /// Fake constructor.
  MyoroFilterButtonThemeExtension.fake()
    : actionButtonsSpacing = myoroNullableFake<double>(),
      closeButtonStyle = myoroNullableFake<MyoroIconTextButtonStyle>(),
      clearButtonStyle = myoroNullableFake<MyoroIconTextButtonStyle>(),
      applyButtonStyle = myoroNullableFake<MyoroIconTextButtonStyle>();

  /// Builder constructor.
  MyoroFilterButtonThemeExtension.builder(TextTheme textTheme)
    : actionButtonsSpacing = kMyoroMultiplier,
      closeButtonStyle = null,
      clearButtonStyle = MyoroIconTextButtonStyle(textStyle: MyoroTextStyle(style: textTheme.bodySmall)),
      applyButtonStyle = MyoroIconTextButtonStyle(textStyle: MyoroTextStyle(style: textTheme.bodySmall));

  /// Spacing between the action buttons.
  @override
  final double? actionButtonsSpacing;

  /// [MyoroIconTextButtonStyle] of the close button.
  @override
  final MyoroIconTextButtonStyle? closeButtonStyle;

  /// [MyoroIconTextButtonStyle] of the clear button.
  @override
  final MyoroIconTextButtonStyle? clearButtonStyle;

  /// [MyoroIconTextButtonStyle] of the apply button.
  @override
  final MyoroIconTextButtonStyle? applyButtonStyle;

  /// Lerp function.
  @override
  MyoroFilterButtonThemeExtension lerp(covariant MyoroFilterButtonThemeExtension? other, double t) {
    if (other is! MyoroFilterButtonThemeExtension) return this;
    final style = MyoroFilterButtonStyle.lerp(this, other, t);
    return MyoroFilterButtonThemeExtension(
      actionButtonsSpacing: style.actionButtonsSpacing,
      closeButtonStyle: style.closeButtonStyle,
      clearButtonStyle: style.clearButtonStyle,
      applyButtonStyle: style.applyButtonStyle,
    );
  }
}
