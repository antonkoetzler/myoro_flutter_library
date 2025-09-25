import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_modal_style.g.dart';

/// Style model of [MyoroModal].
@immutable
@myoroModel
class MyoroModalStyle with _$MyoroModalStyleMixin {
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

  // coverage:ignore-start
  factory MyoroModalStyle.fake() {
    return MyoroModalStyle(
      constraints: faker.randomGenerator.boolean() ? myoroFake<BoxConstraints>() : null,
      primaryColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      bottomSheetBorderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      border: faker.randomGenerator.boolean() ? myoroFake<Border>() : null,
      bottomSheetBorder: faker.randomGenerator.boolean() ? myoroFake<Border>() : null,
      padding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      closeButtonPadding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      titleTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      closeButtonIconConfiguration: faker.randomGenerator.boolean() ? MyoroIconConfiguration.fake() : null,
    );
  }
  // coverage:ignore-end

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

  /// Copy with.
  MyoroModalStyle copyWith({
    BoxConstraints? constraints,
    bool constraintsProvided = true,
    Color? primaryColor,
    bool primaryColorProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    BorderRadius? bottomSheetBorderRadius,
    bool bottomSheetBorderRadiusProvided = true,
    Border? border,
    bool borderProvided = true,
    Border? bottomSheetBorder,
    bool bottomSheetBorderProvided = true,
    EdgeInsets? padding,
    bool paddingProvided = true,
    EdgeInsets? closeButtonPadding,
    bool closeButtonPaddingProvided = true,
    double? spacing,
    bool spacingProvided = true,
    TextStyle? titleTextStyle,
    bool titleTextStyleProvided = true,
    MyoroIconConfiguration? closeButtonIconConfiguration,
    bool closeButtonIconConfigurationProvided = true,
  }) {
    return MyoroModalStyle(
      constraints: constraintsProvided ? (constraints ?? this.constraints) : null,
      primaryColor: primaryColorProvided ? (primaryColor ?? this.primaryColor) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? this.borderRadius) : null,
      bottomSheetBorderRadius: bottomSheetBorderRadiusProvided
          ? (bottomSheetBorderRadius ?? this.bottomSheetBorderRadius)
          : null,
      border: borderProvided ? (border ?? this.border) : null,
      bottomSheetBorder: bottomSheetBorderProvided ? (bottomSheetBorder ?? this.bottomSheetBorder) : null,
      padding: paddingProvided ? (padding ?? this.padding) : null,
      closeButtonPadding: closeButtonPaddingProvided ? (closeButtonPadding ?? this.closeButtonPadding) : null,
      spacing: spacingProvided ? (spacing ?? this.spacing) : null,
      titleTextStyle: titleTextStyleProvided ? (titleTextStyle ?? this.titleTextStyle) : null,
      closeButtonIconConfiguration: closeButtonIconConfigurationProvided
          ? (closeButtonIconConfiguration ?? this.closeButtonIconConfiguration)
          : null,
    );
  }
}
