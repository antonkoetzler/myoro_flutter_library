import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_image_picker_style.g.dart';

/// Style model of [MyoroImagePicker].
@immutable
@myoroModel
class MyoroImagePickerStyle with _$MyoroImagePickerStyleMixin {
  static MyoroImagePickerStyle lerp(MyoroImagePickerStyle? a, MyoroImagePickerStyle? b, double t) {
    return MyoroImagePickerStyle(
      size: Size.lerp(a?.size, b?.size, t),
      borderRadius: BorderRadius.lerp(a?.borderRadius, b?.borderRadius, t),
      overlayCursor: myoroFallbackLerp(a?.overlayCursor, b?.overlayCursor, t),
      overlayIdleBackgroundColor: Color.lerp(a?.overlayIdleBackgroundColor, b?.overlayIdleBackgroundColor, t),
      overlayHoverBackgroundColor: Color.lerp(a?.overlayHoverBackgroundColor, b?.overlayHoverBackgroundColor, t),
      overlayTapBackgroundColor: Color.lerp(a?.overlayTapBackgroundColor, b?.overlayTapBackgroundColor, t),
      overlayUnselectedImageStateIconConfiguration: MyoroIconConfiguration.lerp(
        a?.overlayUnselectedImageStateIconConfiguration,
        b?.overlayUnselectedImageStateIconConfiguration,
        t,
      ),
      selectionTypeModalConstraints: BoxConstraints.lerp(
        a?.selectionTypeModalConstraints,
        b?.selectionTypeModalConstraints,
        t,
      ),
      selectionTypeModalSpacing: lerpDouble(a?.selectionTypeModalSpacing, b?.selectionTypeModalSpacing, t),
      selectionTypeModalButtonCameraIcon: myoroFallbackLerp(
        a?.selectionTypeModalButtonCameraIcon,
        b?.selectionTypeModalButtonCameraIcon,
        t,
      ),
      selectionTypeModalButtonGalleryIcon: myoroFallbackLerp(
        a?.selectionTypeModalButtonGalleryIcon,
        b?.selectionTypeModalButtonGalleryIcon,
        t,
      ),
    );
  }

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
