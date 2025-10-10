import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

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
    this.overlayBackgroundIdleColor,
    this.overlayBackgroundHoverColor,
    this.overlayBackgroundTapColor,
    this.overlayUnselectedImageStateIconConfiguration,
    this.selectionTypeModalConstraints,
    this.selectionTypeModalSpacing,
    this.selectionTypeModalButtonCameraIcon,
    this.selectionTypeModalButtonGalleryIcon,
  });

  MyoroImagePickerThemeExtension.fake()
    : size = faker.randomGenerator.boolean() ? myoroFake<Size>() : null,
      borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      overlayCursor = faker.randomGenerator.boolean() ? myoroFake<MouseCursor>() : null,
      overlayBackgroundIdleColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      overlayBackgroundHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      overlayBackgroundTapColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      overlayUnselectedImageStateIconConfiguration = faker.randomGenerator.boolean()
          ? MyoroIconConfiguration.fake()
          : null,
      selectionTypeModalConstraints = faker.randomGenerator.boolean() ? myoroFake<BoxConstraints>() : null,
      selectionTypeModalSpacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      selectionTypeModalButtonCameraIcon = faker.randomGenerator.boolean() ? myoroFake<IconData>() : null,
      selectionTypeModalButtonGalleryIcon = faker.randomGenerator.boolean() ? myoroFake<IconData>() : null;

  MyoroImagePickerThemeExtension.builder(ColorScheme colorScheme)
    : size = null,
      borderRadius = BorderRadius.circular(kMyoroBorderRadius),
      overlayCursor = SystemMouseCursors.click,
      overlayBackgroundIdleColor = colorScheme.onPrimary.withValues(alpha: kMyoroMultiplier * 2 / 100),
      overlayBackgroundHoverColor = colorScheme.onPrimary.withValues(alpha: kMyoroMultiplier * 4 / 100),
      overlayBackgroundTapColor = colorScheme.onPrimary.withValues(alpha: kMyoroMultiplier * 6 / 100),
      overlayUnselectedImageStateIconConfiguration = const MyoroIconConfiguration(
        icon: Icons.upload,
        size: kMyoroMultiplier * 20,
      ),
      selectionTypeModalConstraints = MyoroPlatformHelper.isDesktop
          ? const BoxConstraints(maxWidth: kMyoroMultiplier * 58, maxHeight: kMyoroMultiplier * 50)
          : null,
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
  final Color? overlayBackgroundIdleColor;

  /// Background [Color] of the overlay button's [MyoroTapStatusEnum.hover] state.
  @override
  final Color? overlayBackgroundHoverColor;

  /// Background [Color] of the overlay button's [MyoroTapStatusEnum.tap] state.
  @override
  final Color? overlayBackgroundTapColor;

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
      overlayBackgroundIdleColor: style.overlayBackgroundIdleColor,
      overlayBackgroundHoverColor: style.overlayBackgroundHoverColor,
      overlayBackgroundTapColor: style.overlayBackgroundTapColor,
      overlayUnselectedImageStateIconConfiguration: style.overlayUnselectedImageStateIconConfiguration,
      selectionTypeModalConstraints: style.selectionTypeModalConstraints,
      selectionTypeModalSpacing: style.selectionTypeModalSpacing,
      selectionTypeModalButtonCameraIcon: style.selectionTypeModalButtonCameraIcon,
      selectionTypeModalButtonGalleryIcon: style.selectionTypeModalButtonGalleryIcon,
    );
  }
}
