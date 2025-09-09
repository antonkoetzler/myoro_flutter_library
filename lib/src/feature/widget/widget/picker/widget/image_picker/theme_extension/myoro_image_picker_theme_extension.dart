import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_image_picker_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroImagePicker].
@immutable
@myoroThemeExtension
final class MyoroImagePickerThemeExtension extends ThemeExtension<MyoroImagePickerThemeExtension>
    with _$MyoroImagePickerThemeExtensionMixin {
  const MyoroImagePickerThemeExtension({
    required this.borderRadius,
    required this.overlayCursor,
    required this.overlayIdleBackgroundColor,
    required this.overlayHoverBackgroundColor,
    required this.overlayTapBackgroundColor,
    required this.overlayUnselectedImageStateIconConfiguration,
    required this.selectionTypeModalConstraints,
    required this.selectionTypeModalSpacing,
    required this.selectionTypeModalButtonCameraIcon,
    required this.selectionTypeModalButtonGalleryIcon,
  });

  // coverage:ignore-start
  MyoroImagePickerThemeExtension.fake()
    : borderRadius = myoroFake<BorderRadius>(),
      overlayCursor = myoroFake<MouseCursor>(),
      overlayIdleBackgroundColor = myoroFake<Color>(),
      overlayHoverBackgroundColor = myoroFake<Color>(),
      overlayTapBackgroundColor = myoroFake<Color>(),
      overlayUnselectedImageStateIconConfiguration = MyoroIconConfiguration.fake(),
      selectionTypeModalConstraints = myoroFake<BoxConstraints>(),
      selectionTypeModalSpacing = faker.randomGenerator.decimal(scale: 20),
      selectionTypeModalButtonCameraIcon = myoroFake<IconData>(),
      selectionTypeModalButtonGalleryIcon = myoroFake<IconData>();
  // coverage:ignore-end

  MyoroImagePickerThemeExtension.builder(ColorScheme colorScheme)
    : borderRadius = BorderRadius.circular(kMyoroBorderRadius),
      overlayCursor = SystemMouseCursors.click,
      overlayIdleBackgroundColor = colorScheme.onPrimary.withValues(alpha: kMyoroMultiplier * 2 / 100),
      overlayHoverBackgroundColor = colorScheme.onPrimary.withValues(alpha: kMyoroMultiplier * 4 / 100),
      overlayTapBackgroundColor = colorScheme.onPrimary.withValues(alpha: kMyoroMultiplier * 6 / 100),
      overlayUnselectedImageStateIconConfiguration = const MyoroIconConfiguration(
        icon: Icons.upload,
        size: kMyoroMultiplier * 20,
      ),
      selectionTypeModalConstraints = const BoxConstraints(
        maxWidth: kMyoroMultiplier * 58,
        maxHeight: kMyoroMultiplier * 50,
      ),
      selectionTypeModalSpacing = kMyoroMultiplier * 2,
      selectionTypeModalButtonCameraIcon = Icons.camera,
      selectionTypeModalButtonGalleryIcon = Icons.browse_gallery;

  /// [BorderRadius] of the [MyoroImagePicker].
  final BorderRadius borderRadius;

  /// Cursor on the tappable overlay.
  final MouseCursor overlayCursor;

  /// Background [Color] of the overlay button's [MyoroTapStatusEnum.idle] state.
  final Color overlayIdleBackgroundColor;

  /// Background [Color] of the overlay button's [MyoroTapStatusEnum.hover] state.
  final Color overlayHoverBackgroundColor;

  /// Background [Color] of the overlay button's [MyoroTapStatusEnum.tap] state.
  final Color overlayTapBackgroundColor;

  /// [MyoroIconConfiguration] of the icon shown when there is no image selected.
  final MyoroIconConfiguration overlayUnselectedImageStateIconConfiguration;

  /// Constraints of the selection modal.
  final BoxConstraints selectionTypeModalConstraints;

  /// Spacing between buttons in the selection sheet.
  final double selectionTypeModalSpacing;

  /// Icon of [ImageSource.camera]'s selection sheet button.
  final IconData selectionTypeModalButtonCameraIcon;

  /// Icon of [ImageSource.gallery]'s selection sheet button.
  final IconData selectionTypeModalButtonGalleryIcon;

  @override
  MyoroImagePickerThemeExtension lerp(covariant ThemeExtension<MyoroImagePickerThemeExtension>? other, double t) {
    if (other is! MyoroImagePickerThemeExtension) return this;
    return copyWith(
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      overlayCursor: myoroLerp(overlayCursor, other.overlayCursor, t),
      overlayIdleBackgroundColor: Color.lerp(overlayIdleBackgroundColor, other.overlayIdleBackgroundColor, t),
      selectionTypeModalConstraints: BoxConstraints.lerp(
        selectionTypeModalConstraints,
        other.selectionTypeModalConstraints,
        t,
      ),
      overlayHoverBackgroundColor: Color.lerp(overlayHoverBackgroundColor, other.overlayHoverBackgroundColor, t),
      overlayTapBackgroundColor: Color.lerp(overlayTapBackgroundColor, other.overlayTapBackgroundColor, t),
      overlayUnselectedImageStateIconConfiguration: MyoroIconConfiguration.lerp(
        overlayUnselectedImageStateIconConfiguration,
        other.overlayUnselectedImageStateIconConfiguration,
        t,
      ),
      selectionTypeModalSpacing: lerpDouble(selectionTypeModalSpacing, other.selectionTypeModalSpacing, t),
      selectionTypeModalButtonCameraIcon: myoroLerp(
        selectionTypeModalButtonCameraIcon,
        other.selectionTypeModalButtonCameraIcon,
        t,
      ),
      selectionTypeModalButtonGalleryIcon: myoroLerp(
        selectionTypeModalButtonGalleryIcon,
        other.selectionTypeModalButtonGalleryIcon,
        t,
      ),
    );
  }
}
