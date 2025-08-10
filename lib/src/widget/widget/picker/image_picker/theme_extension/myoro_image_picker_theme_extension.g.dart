// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_image_picker_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroImagePickerThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroImagePickerThemeExtension with _$MyoroImagePickerThemeExtensionMixin {}
/// ```
mixin _$MyoroImagePickerThemeExtensionMixin
    on ThemeExtension<MyoroImagePickerThemeExtension> {
  MyoroImagePickerThemeExtension get self =>
      this as MyoroImagePickerThemeExtension;

  @override
  MyoroImagePickerThemeExtension copyWith({
    BorderRadius? borderRadius,
    MouseCursor? overlayCursor,
    Color? overlayIdleBackgroundColor,
    Color? overlayHoverBackgroundColor,
    Color? overlayTapBackgroundColor,
    MyoroIconConfiguration? overlayUnselectedImageStateIconConfiguration,
    BoxConstraints? selectionTypeModalConstraints,
    double? selectionTypeModalSpacing,
    IconData? selectionTypeModalButtonCameraIcon,
    IconData? selectionTypeModalButtonGalleryIcon,
  }) {
    return MyoroImagePickerThemeExtension(
      borderRadius: borderRadius ?? self.borderRadius,
      overlayCursor: overlayCursor ?? self.overlayCursor,
      overlayIdleBackgroundColor:
          overlayIdleBackgroundColor ?? self.overlayIdleBackgroundColor,
      overlayHoverBackgroundColor:
          overlayHoverBackgroundColor ?? self.overlayHoverBackgroundColor,
      overlayTapBackgroundColor:
          overlayTapBackgroundColor ?? self.overlayTapBackgroundColor,
      overlayUnselectedImageStateIconConfiguration:
          overlayUnselectedImageStateIconConfiguration ??
          self.overlayUnselectedImageStateIconConfiguration,
      selectionTypeModalConstraints:
          selectionTypeModalConstraints ?? self.selectionTypeModalConstraints,
      selectionTypeModalSpacing:
          selectionTypeModalSpacing ?? self.selectionTypeModalSpacing,
      selectionTypeModalButtonCameraIcon:
          selectionTypeModalButtonCameraIcon ??
          self.selectionTypeModalButtonCameraIcon,
      selectionTypeModalButtonGalleryIcon:
          selectionTypeModalButtonGalleryIcon ??
          self.selectionTypeModalButtonGalleryIcon,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroImagePickerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.borderRadius == self.borderRadius &&
        other.overlayCursor == self.overlayCursor &&
        other.overlayIdleBackgroundColor == self.overlayIdleBackgroundColor &&
        other.overlayHoverBackgroundColor == self.overlayHoverBackgroundColor &&
        other.overlayTapBackgroundColor == self.overlayTapBackgroundColor &&
        other.overlayUnselectedImageStateIconConfiguration ==
            self.overlayUnselectedImageStateIconConfiguration &&
        other.selectionTypeModalConstraints ==
            self.selectionTypeModalConstraints &&
        other.selectionTypeModalSpacing == self.selectionTypeModalSpacing &&
        other.selectionTypeModalButtonCameraIcon ==
            self.selectionTypeModalButtonCameraIcon &&
        other.selectionTypeModalButtonGalleryIcon ==
            self.selectionTypeModalButtonGalleryIcon;
  }

  @override
  int get hashCode {
    return Object.hash(
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
