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
  /// Default constructor.
  const MyoroImagePickerThemeExtension({
    this.size,
    this.borderRadius,
    this.overlayCursor,
    this.overlayBackgroundIdleColor,
    this.overlayBackgroundHoverColor,
    this.overlayBackgroundTapColor,
    this.overlayUnselectedImageStateIcon,
    this.overlayUnselectedImageStateIconStyle,
    this.selectionTypeModalConstraints,
    this.selectionTypeModalSpacing,
    this.selectionTypeModalButtonCameraIcon,
    this.selectionTypeModalButtonGalleryIcon,
    this.labelTextStyle,
  });

  /// Fake constructor.
  MyoroImagePickerThemeExtension.fake()
    : size = myoroNullableFake<Size>(),
      borderRadius = myoroNullableFake<BorderRadius>(),
      overlayCursor = myoroNullableFake<MouseCursor>(),
      overlayBackgroundIdleColor = myoroNullableFake<Color>(),
      overlayBackgroundHoverColor = myoroNullableFake<Color>(),
      overlayBackgroundTapColor = myoroNullableFake<Color>(),
      overlayUnselectedImageStateIcon = myoroNullableFake<IconData>(),
      overlayUnselectedImageStateIconStyle = faker.randomGenerator.boolean() ? MyoroIconStyle.fake() : null,
      selectionTypeModalConstraints = myoroNullableFake<BoxConstraints>(),
      selectionTypeModalSpacing = myoroNullableFake<double>(),
      selectionTypeModalButtonCameraIcon = myoroNullableFake<IconData>(),
      selectionTypeModalButtonGalleryIcon = myoroNullableFake<IconData>(),
      labelTextStyle = myoroNullableFake<TextStyle>();

  /// Builder constructor.
  MyoroImagePickerThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : size = const Size(double.infinity, kMyoroMultiplier * 30),
      borderRadius = BorderRadius.circular(kMyoroBorderRadius),
      overlayCursor = SystemMouseCursors.click,
      overlayBackgroundIdleColor = colorScheme.onPrimary.withValues(alpha: kMyoroMultiplier * 2 / 100),
      overlayBackgroundHoverColor = colorScheme.onPrimary.withValues(alpha: kMyoroMultiplier * 4 / 100),
      overlayBackgroundTapColor = colorScheme.onPrimary.withValues(alpha: kMyoroMultiplier * 6 / 100),
      overlayUnselectedImageStateIcon = null,
      overlayUnselectedImageStateIconStyle = const MyoroIconStyle(size: kMyoroMultiplier * 20),
      selectionTypeModalConstraints = MyoroPlatformHelper.isDesktop
          ? const BoxConstraints(maxWidth: kMyoroMultiplier * 58, maxHeight: kMyoroMultiplier * 50)
          : null,
      selectionTypeModalSpacing = kMyoroMultiplier * 2,
      selectionTypeModalButtonCameraIcon = Icons.camera,
      selectionTypeModalButtonGalleryIcon = Icons.browse_gallery,
      labelTextStyle = textTheme.bodyMedium;

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

  /// Icon of the overlay when no image is selected.
  @override
  final IconData? overlayUnselectedImageStateIcon;

  /// [MyoroIconStyle] of the icon shown when there is no image selected.
  @override
  final MyoroIconStyle? overlayUnselectedImageStateIconStyle;

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

  /// Spacing of the icon and label in the overlay.
  @override
  final TextStyle? labelTextStyle;

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
      overlayUnselectedImageStateIcon: style.overlayUnselectedImageStateIcon,
      overlayUnselectedImageStateIconStyle: style.overlayUnselectedImageStateIconStyle,
      selectionTypeModalConstraints: style.selectionTypeModalConstraints,
      selectionTypeModalSpacing: style.selectionTypeModalSpacing,
      selectionTypeModalButtonCameraIcon: style.selectionTypeModalButtonCameraIcon,
      selectionTypeModalButtonGalleryIcon: style.selectionTypeModalButtonGalleryIcon,
      labelTextStyle: style.labelTextStyle,
    );
  }
}
