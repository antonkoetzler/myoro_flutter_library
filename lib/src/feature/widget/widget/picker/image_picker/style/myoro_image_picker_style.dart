import 'dart:ui';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_image_picker_style.g.dart';

/// Style model of [MyoroImagePicker].
@immutable
@myoroModel
class MyoroImagePickerStyle with _$MyoroImagePickerStyleMixin {
  /// Lerp function.
  static MyoroImagePickerStyle lerp(MyoroImagePickerStyle? a, MyoroImagePickerStyle? b, double t) {
    return MyoroImagePickerStyle(
      size: Size.lerp(a?.size, b?.size, t),
      borderRadius: BorderRadius.lerp(a?.borderRadius, b?.borderRadius, t),
      overlayCursor: myoroFallbackLerp(a?.overlayCursor, b?.overlayCursor, t),
      overlayBackgroundIdleColor: Color.lerp(a?.overlayBackgroundIdleColor, b?.overlayBackgroundIdleColor, t),
      overlayBackgroundHoverColor: Color.lerp(a?.overlayBackgroundHoverColor, b?.overlayBackgroundHoverColor, t),
      overlayBackgroundTapColor: Color.lerp(a?.overlayBackgroundTapColor, b?.overlayBackgroundTapColor, t),
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

  /// Default constructor.
  const MyoroImagePickerStyle({
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

  /// Fake constructor.
  factory MyoroImagePickerStyle.fake() {
    return MyoroImagePickerStyle(
      size: myoroNullableFake<Size>(),
      borderRadius: myoroNullableFake<BorderRadius>(),
      overlayCursor: myoroNullableFake<MouseCursor>(),
      overlayBackgroundIdleColor: myoroNullableFake<Color>(),
      overlayBackgroundHoverColor: myoroNullableFake<Color>(),
      overlayBackgroundTapColor: myoroNullableFake<Color>(),
      overlayUnselectedImageStateIconConfiguration: faker.randomGenerator.boolean()
          ? myoroFake<MyoroIconConfiguration>()
          : null,
      selectionTypeModalConstraints: myoroNullableFake<BoxConstraints>(),
      selectionTypeModalSpacing: myoroNullableFake<double>(),
      selectionTypeModalButtonCameraIcon: myoroNullableFake<IconData>(),
      selectionTypeModalButtonGalleryIcon: myoroNullableFake<IconData>(),
    );
  }

  /// Size of the [MyoroImagePicker].
  final Size? size;

  /// Border radius of the [MyoroImagePicker].
  final BorderRadius? borderRadius;

  /// Cursor of the overlay.
  final MouseCursor? overlayCursor;

  /// Background color of the overlay when idle.
  final Color? overlayBackgroundIdleColor;

  /// Background color of the overlay when hovered.
  final Color? overlayBackgroundHoverColor;

  /// Background color of the overlay when tapped.
  final Color? overlayBackgroundTapColor;

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
}
