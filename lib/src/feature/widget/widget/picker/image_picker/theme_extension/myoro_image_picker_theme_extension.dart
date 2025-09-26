import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import '../model/myoro_image_picker_style.dart';

part 'myoro_image_picker_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroImagePicker].
@immutable
@myoroThemeExtension
final class MyoroImagePickerThemeExtension extends ThemeExtension<MyoroImagePickerThemeExtension>
    with _$MyoroImagePickerThemeExtensionMixin
    implements MyoroImagePickerStyle {
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
      overlayUnselectedImageStateIconConfiguration = faker.randomGenerator.boolean() ? MyoroIconConfiguration.fake() : null,
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
      overlayUnselectedImageStateIconConfiguration = const MyoroIconConfiguration(icon: Icons.upload, size: kMyoroMultiplier * 20),
      selectionTypeModalConstraints = const BoxConstraints(maxWidth: kMyoroMultiplier * 58, maxHeight: kMyoroMultiplier * 50),
      selectionTypeModalSpacing = kMyoroMultiplier * 2,
      selectionTypeModalButtonCameraIcon = Icons.camera,
      selectionTypeModalButtonGalleryIcon = Icons.browse_gallery;

  /// Size of the [MyoroImagePicker].
  @override
  final Size? size;

  /// [BorderRadius] of the [MyoroImagePicker].
  @override
  final BorderRadius? borderRadius;

  /// Cursor on the tappable overlay.
  @override
  final MouseCursor? overlayCursor;

  /// Background [Color] of the overlay button's [MyoroTapStatusEnum.idle] state.
  @override
  final Color? overlayIdleBackgroundColor;

  /// Background [Color] of the overlay button's [MyoroTapStatusEnum.hover] state.
  @override
  final Color? overlayHoverBackgroundColor;

  /// Background [Color] of the overlay button's [MyoroTapStatusEnum.tap] state.
  @override
  final Color? overlayTapBackgroundColor;

  /// [MyoroIconConfiguration] of the icon shown when there is no image selected.
  @override
  final MyoroIconConfiguration? overlayUnselectedImageStateIconConfiguration;

  /// Constraints of the selection modal.
  @override
  final BoxConstraints? selectionTypeModalConstraints;

  /// Spacing between buttons in the selection sheet.
  @override
  final double? selectionTypeModalSpacing;

  /// Icon of [ImageSource.camera]'s selection sheet button.
  @override
  final IconData? selectionTypeModalButtonCameraIcon;

  /// Icon of [ImageSource.gallery]'s selection sheet button.
  @override
  final IconData? selectionTypeModalButtonGalleryIcon;

  @override
  MyoroImagePickerThemeExtension lerp(covariant MyoroImagePickerThemeExtension? other, double t) {
    if (other is! MyoroImagePickerThemeExtension) return this;
    final style = MyoroImagePickerStyle.lerp(this, other, t);
    return MyoroImagePickerThemeExtension(
      size: style.size,
      borderRadius: style.borderRadius,
      overlayCursor: style.overlayCursor,
      overlayIdleBackgroundColor: style.overlayIdleBackgroundColor,
      overlayHoverBackgroundColor: style.overlayHoverBackgroundColor,
      overlayTapBackgroundColor: style.overlayTapBackgroundColor,
      overlayUnselectedImageStateIconConfiguration: style.overlayUnselectedImageStateIconConfiguration,
      selectionTypeModalConstraints: style.selectionTypeModalConstraints,
      selectionTypeModalSpacing: style.selectionTypeModalSpacing,
      selectionTypeModalButtonCameraIcon: style.selectionTypeModalButtonCameraIcon,
      selectionTypeModalButtonGalleryIcon: style.selectionTypeModalButtonGalleryIcon,
    );
  }
}
