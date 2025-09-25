import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_modal_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroModal].
@immutable
@myoroThemeExtension
class MyoroModalThemeExtension extends ThemeExtension<MyoroModalThemeExtension>
    with _$MyoroModalThemeExtensionMixin
    implements MyoroModalStyle {
  const MyoroModalThemeExtension({
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

  // coverage:ignore-start
  MyoroModalThemeExtension.fake()
    : constraints = faker.randomGenerator.boolean() ? myoroFake<BoxConstraints>() : null,
      primaryColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      bottomSheetBorderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      border = faker.randomGenerator.boolean() ? myoroFake<Border>() : null,
      bottomSheetBorder = faker.randomGenerator.boolean() ? myoroFake<Border>() : null,
      padding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      closeButtonPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      titleTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      closeButtonIconConfiguration = faker.randomGenerator.boolean() ? MyoroIconConfiguration.fake() : null;
  // coverage:ignore-end

  MyoroModalThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : constraints = null,
      primaryColor = colorScheme.primary,
      borderRadius = BorderRadius.circular(kMyoroBorderRadius),
      bottomSheetBorderRadius = const BorderRadius.only(
        topLeft: Radius.circular(kMyoroBorderRadius),
        topRight: Radius.circular(kMyoroBorderRadius),
      ),
      border = Border.all(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
      bottomSheetBorder = Border(
        top: BorderSide(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
        left: BorderSide(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
        right: BorderSide(width: kMyoroBorderWidth, color: colorScheme.onPrimary),
      ),
      padding = const EdgeInsets.all(kMyoroMultiplier),
      closeButtonPadding = null,
      spacing = 10,
      titleTextStyle = textTheme.titleSmall!,
      closeButtonIconConfiguration = const MyoroIconConfiguration(icon: Icons.close, size: 20);

  /// Constraints of the modal.
  @override
  final BoxConstraints? constraints;

  /// Background [Color] of the modal.
  @override
  final Color? primaryColor;

  /// [BorderRadius] of the modal.
  @override
  final BorderRadius? borderRadius;

  /// [BorderRadius] of the bottom sheet modal.
  @override
  final BorderRadius? bottomSheetBorderRadius;

  /// [Border] of the modal.
  @override
  final Border? border;

  /// [Border] of the bottom sheet modal.
  @override
  final Border? bottomSheetBorder;

  /// Padding of everything in the modal.
  @override
  final EdgeInsets? padding;

  /// Padding of the close button.
  @override
  final EdgeInsets? closeButtonPadding;

  /// Spacing between the [_Header] and the contents of the modal.
  @override
  final double? spacing;

  /// Text style of [_Title].
  @override
  final TextStyle? titleTextStyle;

  /// [MyoroIconConfiguration] of [_CloseButton].
  @override
  final MyoroIconConfiguration? closeButtonIconConfiguration;

  @override
  MyoroModalThemeExtension lerp(covariant ThemeExtension<MyoroModalThemeExtension>? other, double t) {
    if (other is! MyoroModalThemeExtension) return this;

    final constraints = BoxConstraints.lerp(this.constraints, other.constraints, t);
    final primaryColor = Color.lerp(this.primaryColor, other.primaryColor, t);
    final borderRadius = BorderRadius.lerp(this.borderRadius, other.borderRadius, t);
    final bottomSheetBorderRadius = BorderRadius.lerp(this.bottomSheetBorderRadius, other.bottomSheetBorderRadius, t);
    final border = Border.lerp(this.border, other.border, t);
    final bottomSheetBorder = Border.lerp(this.bottomSheetBorder, other.bottomSheetBorder, t);
    final padding = EdgeInsets.lerp(this.padding, other.padding, t);
    final closeButtonPadding = EdgeInsets.lerp(this.closeButtonPadding, other.closeButtonPadding, t);
    final spacing = lerpDouble(this.spacing, other.spacing, t);
    final titleTextStyle = TextStyle.lerp(this.titleTextStyle, other.titleTextStyle, t);
    final closeButtonIconConfiguration = MyoroIconConfiguration.lerp(
      this.closeButtonIconConfiguration,
      other.closeButtonIconConfiguration,
      t,
    );

    return copyWith(
      constraints: constraints,
      constraintsProvided: constraints != null,
      primaryColor: primaryColor,
      primaryColorProvided: primaryColor != null,
      borderRadius: borderRadius,
      borderRadiusProvided: borderRadius != null,
      bottomSheetBorderRadius: bottomSheetBorderRadius,
      bottomSheetBorderRadiusProvided: bottomSheetBorderRadius != null,
      border: border,
      borderProvided: border != null,
      bottomSheetBorder: bottomSheetBorder,
      bottomSheetBorderProvided: bottomSheetBorder != null,
      padding: padding,
      paddingProvided: padding != null,
      closeButtonPadding: closeButtonPadding,
      closeButtonPaddingProvided: closeButtonPadding != null,
      spacing: spacing,
      spacingProvided: spacing != null,
      titleTextStyle: titleTextStyle,
      titleTextStyleProvided: titleTextStyle != null,
      closeButtonIconConfiguration: closeButtonIconConfiguration,
      closeButtonIconConfigurationProvided: closeButtonIconConfiguration != null,
    );
  }

  /// Default [BoxConstraints] of the modal.
  BoxConstraints getDefaultConstraints(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BoxConstraints(maxWidth: screenSize.width * 0.8, maxHeight: screenSize.height * 0.5);
  }
}
