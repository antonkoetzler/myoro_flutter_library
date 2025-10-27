// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_image_picker_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroImagePickerStyle] once the code is generated.
///
/// ```dart
/// class MyoroImagePickerStyle with _$MyoroImagePickerStyleMixin {}
/// ```
mixin _$MyoroImagePickerStyleMixin {
  MyoroImagePickerStyle get self => this as MyoroImagePickerStyle;

  MyoroImagePickerStyle copyWith({
    Size? size,
    bool sizeProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    MouseCursor? overlayCursor,
    bool overlayCursorProvided = true,
    Color? overlayBackgroundIdleColor,
    bool overlayBackgroundIdleColorProvided = true,
    Color? overlayBackgroundHoverColor,
    bool overlayBackgroundHoverColorProvided = true,
    Color? overlayBackgroundTapColor,
    bool overlayBackgroundTapColorProvided = true,
    MyoroIconConfiguration? overlayUnselectedImageStateIconConfiguration,
    bool overlayUnselectedImageStateIconConfigurationProvided = true,
    BoxConstraints? selectionTypeModalConstraints,
    bool selectionTypeModalConstraintsProvided = true,
    double? selectionTypeModalSpacing,
    bool selectionTypeModalSpacingProvided = true,
    IconData? selectionTypeModalButtonCameraIcon,
    bool selectionTypeModalButtonCameraIconProvided = true,
    IconData? selectionTypeModalButtonGalleryIcon,
    bool selectionTypeModalButtonGalleryIconProvided = true,
  }) {
    return MyoroImagePickerStyle(
      size: sizeProvided ? (size ?? self.size) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
      overlayCursor: overlayCursorProvided ? (overlayCursor ?? self.overlayCursor) : null,
      overlayBackgroundIdleColor: overlayBackgroundIdleColorProvided
          ? (overlayBackgroundIdleColor ?? self.overlayBackgroundIdleColor)
          : null,
      overlayBackgroundHoverColor: overlayBackgroundHoverColorProvided
          ? (overlayBackgroundHoverColor ?? self.overlayBackgroundHoverColor)
          : null,
      overlayBackgroundTapColor: overlayBackgroundTapColorProvided
          ? (overlayBackgroundTapColor ?? self.overlayBackgroundTapColor)
          : null,
      overlayUnselectedImageStateIconConfiguration: overlayUnselectedImageStateIconConfigurationProvided
          ? (overlayUnselectedImageStateIconConfiguration ?? self.overlayUnselectedImageStateIconConfiguration)
          : null,
      selectionTypeModalConstraints: selectionTypeModalConstraintsProvided
          ? (selectionTypeModalConstraints ?? self.selectionTypeModalConstraints)
          : null,
      selectionTypeModalSpacing: selectionTypeModalSpacingProvided
          ? (selectionTypeModalSpacing ?? self.selectionTypeModalSpacing)
          : null,
      selectionTypeModalButtonCameraIcon: selectionTypeModalButtonCameraIconProvided
          ? (selectionTypeModalButtonCameraIcon ?? self.selectionTypeModalButtonCameraIcon)
          : null,
      selectionTypeModalButtonGalleryIcon: selectionTypeModalButtonGalleryIconProvided
          ? (selectionTypeModalButtonGalleryIcon ?? self.selectionTypeModalButtonGalleryIcon)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroImagePickerStyle &&
        other.runtimeType == runtimeType &&
        other.size == self.size &&
        other.borderRadius == self.borderRadius &&
        other.overlayCursor == self.overlayCursor &&
        other.overlayBackgroundIdleColor == self.overlayBackgroundIdleColor &&
        other.overlayBackgroundHoverColor == self.overlayBackgroundHoverColor &&
        other.overlayBackgroundTapColor == self.overlayBackgroundTapColor &&
        other.overlayUnselectedImageStateIconConfiguration == self.overlayUnselectedImageStateIconConfiguration &&
        other.selectionTypeModalConstraints == self.selectionTypeModalConstraints &&
        other.selectionTypeModalSpacing == self.selectionTypeModalSpacing &&
        other.selectionTypeModalButtonCameraIcon == self.selectionTypeModalButtonCameraIcon &&
        other.selectionTypeModalButtonGalleryIcon == self.selectionTypeModalButtonGalleryIcon;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.size,
      self.borderRadius,
      self.overlayCursor,
      self.overlayBackgroundIdleColor,
      self.overlayBackgroundHoverColor,
      self.overlayBackgroundTapColor,
      self.overlayUnselectedImageStateIconConfiguration,
      self.selectionTypeModalConstraints,
      self.selectionTypeModalSpacing,
      self.selectionTypeModalButtonCameraIcon,
      self.selectionTypeModalButtonGalleryIcon,
    );
  }

  @override
  String toString() =>
      'MyoroImagePickerStyle(\n'
      '  size: ${self.size},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  overlayCursor: ${self.overlayCursor},\n'
      '  overlayBackgroundIdleColor: ${self.overlayBackgroundIdleColor},\n'
      '  overlayBackgroundHoverColor: ${self.overlayBackgroundHoverColor},\n'
      '  overlayBackgroundTapColor: ${self.overlayBackgroundTapColor},\n'
      '  overlayUnselectedImageStateIconConfiguration: ${self.overlayUnselectedImageStateIconConfiguration},\n'
      '  selectionTypeModalConstraints: ${self.selectionTypeModalConstraints},\n'
      '  selectionTypeModalSpacing: ${self.selectionTypeModalSpacing},\n'
      '  selectionTypeModalButtonCameraIcon: ${self.selectionTypeModalButtonCameraIcon},\n'
      '  selectionTypeModalButtonGalleryIcon: ${self.selectionTypeModalButtonGalleryIcon},\n'
      ');';
}
