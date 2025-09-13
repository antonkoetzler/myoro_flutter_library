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
    this.size,
    this.borderRadius,
    this.overlayCursor,
    this.overlayIdleBackgroundColor,
    this.overlayHoverBackgroundColor,
    this.overlayTapBackgroundColor,
    this.overlayUnselectedImageStateIconConfiguration,
    this.selectionTypeModalConstraints,
    this.selectionTypeModalSpacing,
    this.selectionTypeModalButtonCameraIcon,
    this.selectionTypeModalButtonGalleryIcon,
  });

  // coverage:ignore-start
  MyoroImagePickerThemeExtension.fake()
    : size = faker.randomGenerator.boolean() ? myoroFake<Size>() : null,
      borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      overlayCursor = faker.randomGenerator.boolean() ? myoroFake<MouseCursor>() : null,
      overlayIdleBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      overlayHoverBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      overlayTapBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      overlayUnselectedImageStateIconConfiguration = faker.randomGenerator.boolean()
          ? MyoroIconConfiguration.fake()
          : null,
      selectionTypeModalConstraints = faker.randomGenerator.boolean() ? myoroFake<BoxConstraints>() : null,
      selectionTypeModalSpacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      selectionTypeModalButtonCameraIcon = faker.randomGenerator.boolean() ? myoroFake<IconData>() : null,
      selectionTypeModalButtonGalleryIcon = faker.randomGenerator.boolean() ? myoroFake<IconData>() : null;
  // coverage:ignore-end

  MyoroImagePickerThemeExtension.builder(ColorScheme colorScheme)
    : size = null,
      borderRadius = BorderRadius.circular(kMyoroBorderRadius),
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

  /// Size of the [MyoroImagePicker].
  final Size? size;

  /// [BorderRadius] of the [MyoroImagePicker].
  final BorderRadius? borderRadius;

  /// Cursor on the tappable overlay.
  final MouseCursor? overlayCursor;

  /// Background [Color] of the overlay button's [MyoroTapStatusEnum.idle] state.
  final Color? overlayIdleBackgroundColor;

  /// Background [Color] of the overlay button's [MyoroTapStatusEnum.hover] state.
  final Color? overlayHoverBackgroundColor;

  /// Background [Color] of the overlay button's [MyoroTapStatusEnum.tap] state.
  final Color? overlayTapBackgroundColor;

  /// [MyoroIconConfiguration] of the icon shown when there is no image selected.
  final MyoroIconConfiguration? overlayUnselectedImageStateIconConfiguration;

  /// Constraints of the selection modal.
  final BoxConstraints? selectionTypeModalConstraints;

  /// Spacing between buttons in the selection sheet.
  final double? selectionTypeModalSpacing;

  /// Icon of [ImageSource.camera]'s selection sheet button.
  final IconData? selectionTypeModalButtonCameraIcon;

  /// Icon of [ImageSource.gallery]'s selection sheet button.
  final IconData? selectionTypeModalButtonGalleryIcon;

  @override
  MyoroImagePickerThemeExtension lerp(covariant ThemeExtension<MyoroImagePickerThemeExtension>? other, double t) {
    if (other is! MyoroImagePickerThemeExtension) return this;

    final size = Size.lerp(this.size, other.size, t);
    final borderRadius = BorderRadius.lerp(this.borderRadius, other.borderRadius, t);
    final overlayCursor = myoroFallbackLerp(this.overlayCursor, other.overlayCursor, t);
    final overlayIdleBackgroundColor = Color.lerp(this.overlayIdleBackgroundColor, other.overlayIdleBackgroundColor, t);
    final selectionTypeModalConstraints = BoxConstraints.lerp(
      this.selectionTypeModalConstraints,
      other.selectionTypeModalConstraints,
      t,
    );
    final overlayHoverBackgroundColor = Color.lerp(
      this.overlayHoverBackgroundColor,
      other.overlayHoverBackgroundColor,
      t,
    );
    final overlayTapBackgroundColor = Color.lerp(this.overlayTapBackgroundColor, other.overlayTapBackgroundColor, t);
    final overlayUnselectedImageStateIconConfiguration = MyoroIconConfiguration.lerp(
      this.overlayUnselectedImageStateIconConfiguration,
      other.overlayUnselectedImageStateIconConfiguration,
      t,
    );
    final selectionTypeModalSpacing = lerpDouble(this.selectionTypeModalSpacing, other.selectionTypeModalSpacing, t);
    final selectionTypeModalButtonCameraIcon = myoroFallbackLerp(
      this.selectionTypeModalButtonCameraIcon,
      other.selectionTypeModalButtonCameraIcon,
      t,
    );
    final selectionTypeModalButtonGalleryIcon = myoroFallbackLerp(
      this.selectionTypeModalButtonGalleryIcon,
      other.selectionTypeModalButtonGalleryIcon,
      t,
    );

    return copyWith(
      size: size,
      sizeProvided: size != null,
      borderRadius: borderRadius,
      borderRadiusProvided: borderRadius != null,
      overlayCursor: overlayCursor,
      overlayCursorProvided: overlayCursor != null,
      overlayIdleBackgroundColor: overlayIdleBackgroundColor,
      overlayIdleBackgroundColorProvided: overlayIdleBackgroundColor != null,
      selectionTypeModalConstraints: selectionTypeModalConstraints,
      selectionTypeModalConstraintsProvided: selectionTypeModalConstraints != null,
      overlayHoverBackgroundColor: overlayHoverBackgroundColor,
      overlayHoverBackgroundColorProvided: overlayHoverBackgroundColor != null,
      overlayTapBackgroundColor: overlayTapBackgroundColor,
      overlayTapBackgroundColorProvided: overlayTapBackgroundColor != null,
      overlayUnselectedImageStateIconConfiguration: overlayUnselectedImageStateIconConfiguration,
      overlayUnselectedImageStateIconConfigurationProvided: overlayUnselectedImageStateIconConfiguration != null,
      selectionTypeModalSpacing: selectionTypeModalSpacing,
      selectionTypeModalSpacingProvided: selectionTypeModalSpacing != null,
      selectionTypeModalButtonCameraIcon: selectionTypeModalButtonCameraIcon,
      selectionTypeModalButtonCameraIconProvided: selectionTypeModalButtonCameraIcon != null,
      selectionTypeModalButtonGalleryIcon: selectionTypeModalButtonGalleryIcon,
      selectionTypeModalButtonGalleryIconProvided: selectionTypeModalButtonGalleryIcon != null,
    );
  }
}
