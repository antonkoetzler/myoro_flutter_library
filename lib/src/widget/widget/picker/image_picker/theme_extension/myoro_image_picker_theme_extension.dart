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
    required this.unselectedImageStateIcon,
    required this.overlayCursor,
    required this.selectionTypeModalConstraints,
    required this.selectionTypeModalSpacing,
    required this.selectionTypeModalButtonCameraIcon,
    required this.selectionTypeModalButtonGalleryIcon,
  });

  // coverage:ignore-start
  MyoroImagePickerThemeExtension.fake()
    : unselectedImageStateIcon = myoroFake<IconData>(),
      overlayCursor = myoroFake<MouseCursor>(),
      selectionTypeModalConstraints = myoroFake<BoxConstraints>(),
      selectionTypeModalSpacing = faker.randomGenerator.decimal(scale: 20),
      selectionTypeModalButtonCameraIcon = myoroFake<IconData>(),
      selectionTypeModalButtonGalleryIcon = myoroFake<IconData>();
  // coverage:ignore-end

  const MyoroImagePickerThemeExtension.builder()
    : unselectedImageStateIcon = Icons.upload,
      overlayCursor = SystemMouseCursors.click,
      selectionTypeModalConstraints = const BoxConstraints(
        maxWidth: kMyoroMultiplier * 58,
        maxHeight: kMyoroMultiplier * 50,
      ),
      selectionTypeModalSpacing = kMyoroMultiplier * 2,
      selectionTypeModalButtonCameraIcon = Icons.camera,
      selectionTypeModalButtonGalleryIcon = Icons.browse_gallery;

  /// Icon of the unselected state.
  final IconData unselectedImageStateIcon;

  /// Cursor on the tappable overlay.
  final MouseCursor overlayCursor;

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
      unselectedImageStateIcon: myoroLerp(unselectedImageStateIcon, other.unselectedImageStateIcon, t),
      overlayCursor: myoroLerp(overlayCursor, other.overlayCursor, t),
      selectionTypeModalConstraints: BoxConstraints.lerp(
        selectionTypeModalConstraints,
        other.selectionTypeModalConstraints,
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
