import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_image_picker_style.g.dart';

/// Style model of [MyoroImagePicker].
@immutable
@myoroModel
class MyoroImagePickerStyle with _$MyoroImagePickerStyleMixin {
  const MyoroImagePickerStyle({
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
  factory MyoroImagePickerStyle.fake() {
    return MyoroImagePickerStyle(
      size: faker.randomGenerator.boolean() ? myoroFake<Size>() : null,
      borderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      overlayCursor: faker.randomGenerator.boolean() ? myoroFake<MouseCursor>() : null,
      overlayIdleBackgroundColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      overlayHoverBackgroundColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      overlayTapBackgroundColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      overlayUnselectedImageStateIconConfiguration: faker.randomGenerator.boolean()
          ? myoroFake<MyoroIconConfiguration>()
          : null,
      selectionTypeModalConstraints: faker.randomGenerator.boolean() ? myoroFake<BoxConstraints>() : null,
      selectionTypeModalSpacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      selectionTypeModalButtonCameraIcon: faker.randomGenerator.boolean() ? myoroFake<IconData>() : null,
      selectionTypeModalButtonGalleryIcon: faker.randomGenerator.boolean() ? myoroFake<IconData>() : null,
    );
  }
  // coverage:ignore-end

  /// Size of the [MyoroImagePicker].
  final Size? size;

  /// Border radius of the [MyoroImagePicker].
  final BorderRadius? borderRadius;

  /// Cursor of the overlay.
  final MouseCursor? overlayCursor;

  /// Background color of the overlay when idle.
  final Color? overlayIdleBackgroundColor;

  /// Background color of the overlay when hovered.
  final Color? overlayHoverBackgroundColor;

  /// Background color of the overlay when tapped.
  final Color? overlayTapBackgroundColor;

  /// Icon configuration of the overlay when no image is selected.
  final MyoroIconConfiguration? overlayUnselectedImageStateIconConfiguration;

  /// Constraints of the selection type modal.
  final BoxConstraints? selectionTypeModalConstraints;

  /// Spacing of the selection type modal.
  final double? selectionTypeModalSpacing;

  /// Camera icon of the selection type modal button.
  final IconData? selectionTypeModalButtonCameraIcon;

  /// Gallery icon of the selection type modal button.
  final IconData? selectionTypeModalButtonGalleryIcon;

  /// Copy with.
}
