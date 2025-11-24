import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dialog_modal_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroDialogModal].
@immutable
@myoroThemeExtension
class MyoroDialogModalThemeExtension extends ThemeExtension<MyoroDialogModalThemeExtension>
    with _$MyoroDialogModalThemeExtensionMixin
    implements MyoroDialogModalStyle {
  /// Default constructor.
  const MyoroDialogModalThemeExtension({
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
    this.textStyle,
    this.footerButtonsSpacing,
    this.margin,
  });

  /// Fake constructor.
  MyoroDialogModalThemeExtension.fake()
    : constraints = myoroNullableFake<BoxConstraints>(),
      primaryColor = myoroNullableFake<Color>(),
      borderRadius = myoroNullableFake<BorderRadius>(),
      border = myoroNullableFake<Border>(),
      contentPadding = myoroNullableFake<EdgeInsets>(),
      closeButtonPadding = myoroNullableFake<EdgeInsets>(),
      spacing = myoroNullableFake<double>(),
      titleTextStyle = myoroNullableFake<TextStyle>(),
      closeButtonIcon = myoroNullableFake<IconData>(),
      closeButtonIconSize = myoroNullableFake<double>(),
      textStyle = myoroNullableFake<TextStyle>(),
      footerButtonsSpacing = myoroNullableFake<double>(),
      margin = myoroNullableFake<EdgeInsets>();

  /// Builder constructor.
  MyoroDialogModalThemeExtension.builder(TextTheme textTheme)
    : constraints = null,
      primaryColor = null,
      borderRadius = null,
      border = null,
      contentPadding = null,
      closeButtonPadding = null,
      spacing = null,
      titleTextStyle = null,
      closeButtonIcon = Icons.close,
      closeButtonIconSize = null,
      textStyle = textTheme.bodyMedium!,
      footerButtonsSpacing = 10,
      margin = const EdgeInsets.all(kMyoroMultiplier * 3);

  /// Constraints of the modal.
  @override
  final BoxConstraints? constraints;

  /// Background [Color] of the modal.
  @override
  final Color? primaryColor;

  /// [BorderRadius] of the modal.
  @override
  final BorderRadius? borderRadius;

  /// [Border] of the modal.
  @override
  final Border? border;

  /// Padding of everything in the modal.
  @override
  final EdgeInsets? contentPadding;

  /// Padding of the close button.
  @override
  final EdgeInsets? closeButtonPadding;

  /// Spacing between the header and the contents of the modal.
  @override
  final double? spacing;

  /// Text style of the title.
  @override
  final TextStyle? titleTextStyle;

  /// [IconData] of the close button.
  @override
  final IconData? closeButtonIcon;

  /// Icon size of the close button.
  @override
  final double? closeButtonIconSize;

  /// Text style of the simple text option in the message.
  @override
  final TextStyle? textStyle;

  /// Spacing in between the buttons in the footer.
  @override
  final double? footerButtonsSpacing;

  /// Margin of the modal.
  @override
  final EdgeInsets? margin;

  @override
  MyoroDialogModalThemeExtension lerp(covariant MyoroDialogModalThemeExtension? other, double t) {
    if (other is! MyoroDialogModalThemeExtension) return this;
    final style = MyoroDialogModalStyle.lerp(this, other, t);
    return MyoroDialogModalThemeExtension(
      constraints: style.constraints,
      primaryColor: style.primaryColor,
      borderRadius: style.borderRadius,
      border: style.border,
      contentPadding: style.contentPadding,
      closeButtonPadding: style.closeButtonPadding,
      spacing: style.spacing,
      titleTextStyle: style.titleTextStyle,
      closeButtonIcon: style.closeButtonIcon,
      closeButtonIconSize: style.closeButtonIconSize,
      textStyle: style.textStyle,
      footerButtonsSpacing: style.footerButtonsSpacing,
      margin: style.margin,
    );
  }
}
