import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_modal_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroModal].
@immutable
@myoroThemeExtension
class MyoroModalThemeExtension extends ThemeExtension<MyoroModalThemeExtension> with _$MyoroModalThemeExtensionMixin {
  const MyoroModalThemeExtension({
    required this.primaryColor,
    required this.borderRadius,
    required this.bottomSheetBorderRadius,
    required this.border,
    required this.bottomSheetBorder,
    required this.padding,
    required this.spacing,
    required this.titleTextStyle,
    required this.closeButtonIconConfiguration,
  });

  // coverage:ignore-start
  MyoroModalThemeExtension.fake()
    : primaryColor = myoroFake<Color>(),
      borderRadius = myoroFake<BorderRadius>(),
      bottomSheetBorderRadius = myoroFake<BorderRadius>(),
      border = myoroFake<Border>(),
      bottomSheetBorder = myoroFake<Border>(),
      padding = myoroFake<EdgeInsets>(),
      spacing = faker.randomGenerator.decimal(),
      titleTextStyle = myoroFake<TextStyle>(),
      closeButtonIconConfiguration = MyoroIconConfiguration.fake();
  // coverage:ignore-end

  MyoroModalThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : primaryColor = colorScheme.primary,
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
      padding = const EdgeInsets.all(5),
      spacing = 10,
      titleTextStyle = textTheme.titleSmall!,
      closeButtonIconConfiguration = const MyoroIconConfiguration(icon: Icons.close, size: 20);

  /// Background [Color] of the modal.
  final Color primaryColor;

  /// [BorderRadius] of the modal.
  final BorderRadius borderRadius;

  /// [BorderRadius] of the bottom sheet modal.
  final BorderRadius bottomSheetBorderRadius;

  /// [Border] of the modal.
  final Border border;

  /// [Border] of the bottom sheet modal.
  final Border bottomSheetBorder;

  /// Padding of everything in the modal.
  final EdgeInsets padding;

  /// Spacing between the [_Header] and the contents of the modal.
  final double spacing;

  /// Text style of [_Title].
  final TextStyle titleTextStyle;

  /// [MyoroIconConfiguration] of [_CloseButton].
  final MyoroIconConfiguration closeButtonIconConfiguration;

  @override
  MyoroModalThemeExtension lerp(covariant ThemeExtension<MyoroModalThemeExtension>? other, double t) {
    if (other is! MyoroModalThemeExtension) return this;
    return copyWith(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      bottomSheetBorderRadius: BorderRadius.lerp(bottomSheetBorderRadius, other.bottomSheetBorderRadius, t),
      border: Border.lerp(border, other.border, t),
      bottomSheetBorder: Border.lerp(bottomSheetBorder, other.bottomSheetBorder, t),
      padding: EdgeInsets.lerp(padding, other.padding, t),
      spacing: lerpDouble(spacing, other.spacing, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      closeButtonIconConfiguration: MyoroIconConfiguration.lerp(
        closeButtonIconConfiguration,
        other.closeButtonIconConfiguration,
        t,
      ),
    );
  }

  /// Default [BoxConstraints] of the modal.
  BoxConstraints constraints(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return BoxConstraints(maxWidth: screenSize.width * 0.8, maxHeight: screenSize.height * 0.5);
  }
}
