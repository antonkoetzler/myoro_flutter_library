// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_image_picker_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroImagePickerThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroImagePickerThemeExtension with _$MyoroImagePickerThemeExtensionMixin {}
/// ```
mixin _$MyoroImagePickerThemeExtensionMixin on ThemeExtension<MyoroImagePickerThemeExtension> {
  MyoroImagePickerThemeExtension get self => this as MyoroImagePickerThemeExtension;

  @override
  MyoroImagePickerThemeExtension copyWith({
    Size? size,
    bool sizeProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    MouseCursor? overlayCursor,
    bool overlayCursorProvided = true,
    Color? overlayIdleBackgroundColor,
    bool overlayIdleBackgroundColorProvided = true,
    Color? overlayHoverBackgroundColor,
    bool overlayHoverBackgroundColorProvided = true,
    Color? overlayTapBackgroundColor,
    bool overlayTapBackgroundColorProvided = true,
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
    return MyoroImagePickerThemeExtension(
      size: sizeProvided ? (size ?? self.size) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
      overlayCursor: overlayCursorProvided ? (overlayCursor ?? self.overlayCursor) : null,
      overlayIdleBackgroundColor: overlayIdleBackgroundColorProvided
          ? (overlayIdleBackgroundColor ?? self.overlayIdleBackgroundColor)
          : null,
      overlayHoverBackgroundColor: overlayHoverBackgroundColorProvided
          ? (overlayHoverBackgroundColor ?? self.overlayHoverBackgroundColor)
          : null,
      overlayTapBackgroundColor: overlayTapBackgroundColorProvided
          ? (overlayTapBackgroundColor ?? self.overlayTapBackgroundColor)
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
    return other is MyoroImagePickerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.size == self.size &&
        other.borderRadius == self.borderRadius &&
        other.overlayCursor == self.overlayCursor &&
        other.overlayIdleBackgroundColor == self.overlayIdleBackgroundColor &&
        other.overlayHoverBackgroundColor == self.overlayHoverBackgroundColor &&
        other.overlayTapBackgroundColor == self.overlayTapBackgroundColor &&
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
      self.overlayIdleBackgroundColor,
      self.overlayHoverBackgroundColor,
      self.overlayTapBackgroundColor,
      self.overlayUnselectedImageStateIconConfiguration,
      self.selectionTypeModalConstraints,
      self.selectionTypeModalSpacing,
      self.selectionTypeModalButtonCameraIcon,
      self.selectionTypeModalButtonGalleryIcon,
    );
  }

  @override
  String toString() =>
      'MyoroImagePickerThemeExtension(\n'
      '  size: ${self.size},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  overlayCursor: ${self.overlayCursor},\n'
      '  overlayIdleBackgroundColor: ${self.overlayIdleBackgroundColor},\n'
      '  overlayHoverBackgroundColor: ${self.overlayHoverBackgroundColor},\n'
      '  overlayTapBackgroundColor: ${self.overlayTapBackgroundColor},\n'
      '  overlayUnselectedImageStateIconConfiguration: ${self.overlayUnselectedImageStateIconConfiguration},\n'
      '  selectionTypeModalConstraints: ${self.selectionTypeModalConstraints},\n'
      '  selectionTypeModalSpacing: ${self.selectionTypeModalSpacing},\n'
      '  selectionTypeModalButtonCameraIcon: ${self.selectionTypeModalButtonCameraIcon},\n'
      '  selectionTypeModalButtonGalleryIcon: ${self.selectionTypeModalButtonGalleryIcon},\n'
      ');';
}
