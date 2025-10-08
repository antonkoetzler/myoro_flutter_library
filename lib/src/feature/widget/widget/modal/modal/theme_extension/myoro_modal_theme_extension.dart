import 'package:faker/faker.dart' hide Color;
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
      closeButtonIconConfiguration = const MyoroIconConfiguration(icon: Icons.close, size: kMyoroMultiplier * 5);

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
  MyoroModalThemeExtension lerp(covariant MyoroModalThemeExtension? other, double t) {
    if (other is! MyoroModalThemeExtension) return this;
    final style = MyoroModalStyle.lerp(this, other, t);
    return MyoroModalThemeExtension(
      constraints: style.constraints,
      primaryColor: style.primaryColor,
      borderRadius: style.borderRadius,
      bottomSheetBorderRadius: style.bottomSheetBorderRadius,
      border: style.border,
      bottomSheetBorder: style.bottomSheetBorder,
      padding: style.padding,
      closeButtonPadding: style.closeButtonPadding,
      spacing: style.spacing,
      titleTextStyle: style.titleTextStyle,
      closeButtonIconConfiguration: style.closeButtonIconConfiguration,
    );
  }

  /// Default [BoxConstraints] of the modal.
  BoxConstraints getDefaultConstraints(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BoxConstraints(maxWidth: screenSize.width * 0.8, maxHeight: screenSize.height * 0.5);
  }
}
