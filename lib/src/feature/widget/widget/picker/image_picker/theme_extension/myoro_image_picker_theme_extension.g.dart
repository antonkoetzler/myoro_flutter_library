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
    Color? overlayBackgroundIdleColor,
    bool overlayBackgroundIdleColorProvided = true,
    Color? overlayBackgroundHoverColor,
    bool overlayBackgroundHoverColorProvided = true,
    Color? overlayBackgroundTapColor,
    bool overlayBackgroundTapColorProvided = true,
    IconData? overlayUnselectedImageStateIcon,
    bool overlayUnselectedImageStateIconProvided = true,
    MyoroIconStyle? overlayUnselectedImageStateIconStyle,
    bool overlayUnselectedImageStateIconStyleProvided = true,
    BoxConstraints? selectionTypeModalConstraints,
    bool selectionTypeModalConstraintsProvided = true,
    double? selectionTypeModalSpacing,
    bool selectionTypeModalSpacingProvided = true,
    IconData? selectionTypeModalButtonCameraIcon,
    bool selectionTypeModalButtonCameraIconProvided = true,
    IconData? selectionTypeModalButtonGalleryIcon,
    bool selectionTypeModalButtonGalleryIconProvided = true,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
  }) {
    return MyoroImagePickerThemeExtension(
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
      overlayUnselectedImageStateIcon: overlayUnselectedImageStateIconProvided
          ? (overlayUnselectedImageStateIcon ?? self.overlayUnselectedImageStateIcon)
          : null,
      overlayUnselectedImageStateIconStyle: overlayUnselectedImageStateIconStyleProvided
          ? (overlayUnselectedImageStateIconStyle ?? self.overlayUnselectedImageStateIconStyle)
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
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? self.labelTextStyle) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroImagePickerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.size == self.size &&
        other.borderRadius == self.borderRadius &&
        other.overlayCursor == self.overlayCursor &&
        other.overlayBackgroundIdleColor == self.overlayBackgroundIdleColor &&
        other.overlayBackgroundHoverColor == self.overlayBackgroundHoverColor &&
        other.overlayBackgroundTapColor == self.overlayBackgroundTapColor &&
        other.overlayUnselectedImageStateIcon == self.overlayUnselectedImageStateIcon &&
        other.overlayUnselectedImageStateIconStyle == self.overlayUnselectedImageStateIconStyle &&
        other.selectionTypeModalConstraints == self.selectionTypeModalConstraints &&
        other.selectionTypeModalSpacing == self.selectionTypeModalSpacing &&
        other.selectionTypeModalButtonCameraIcon == self.selectionTypeModalButtonCameraIcon &&
        other.selectionTypeModalButtonGalleryIcon == self.selectionTypeModalButtonGalleryIcon &&
        other.labelTextStyle == self.labelTextStyle;
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
      self.overlayUnselectedImageStateIcon,
      self.overlayUnselectedImageStateIconStyle,
      self.selectionTypeModalConstraints,
      self.selectionTypeModalSpacing,
      self.selectionTypeModalButtonCameraIcon,
      self.selectionTypeModalButtonGalleryIcon,
      self.labelTextStyle,
    );
  }

  @override
  String toString() =>
      'MyoroImagePickerThemeExtension(\n'
      '  size: ${self.size},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  overlayCursor: ${self.overlayCursor},\n'
      '  overlayBackgroundIdleColor: ${self.overlayBackgroundIdleColor},\n'
      '  overlayBackgroundHoverColor: ${self.overlayBackgroundHoverColor},\n'
      '  overlayBackgroundTapColor: ${self.overlayBackgroundTapColor},\n'
      '  overlayUnselectedImageStateIcon: ${self.overlayUnselectedImageStateIcon},\n'
      '  overlayUnselectedImageStateIconStyle: ${self.overlayUnselectedImageStateIconStyle},\n'
      '  selectionTypeModalConstraints: ${self.selectionTypeModalConstraints},\n'
      '  selectionTypeModalSpacing: ${self.selectionTypeModalSpacing},\n'
      '  selectionTypeModalButtonCameraIcon: ${self.selectionTypeModalButtonCameraIcon},\n'
      '  selectionTypeModalButtonGalleryIcon: ${self.selectionTypeModalButtonGalleryIcon},\n'
      '  labelTextStyle: ${self.labelTextStyle},\n'
      ');';
}
