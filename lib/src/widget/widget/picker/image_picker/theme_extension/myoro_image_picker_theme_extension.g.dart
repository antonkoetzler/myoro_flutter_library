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
mixin _$MyoroImagePickerThemeExtensionMixin on ThemeExtension<MyoroImagePickerThemeExtension> {
  MyoroImagePickerThemeExtension get self => this as MyoroImagePickerThemeExtension;

  @override
  MyoroImagePickerThemeExtension copyWith({
    IconData? unselectedImageStateIcon,
    MouseCursor? overlayCursor,
    BoxConstraints? selectionTypeModalConstraints,
    double? selectionTypeModalSpacing,
    IconData? selectionTypeModalButtonCameraIcon,
    IconData? selectionTypeModalButtonGalleryIcon,
  }) {
    return MyoroImagePickerThemeExtension(
      unselectedImageStateIcon: unselectedImageStateIcon ?? self.unselectedImageStateIcon,
      overlayCursor: overlayCursor ?? self.overlayCursor,
      selectionTypeModalConstraints: selectionTypeModalConstraints ?? self.selectionTypeModalConstraints,
      selectionTypeModalSpacing: selectionTypeModalSpacing ?? self.selectionTypeModalSpacing,
      selectionTypeModalButtonCameraIcon: selectionTypeModalButtonCameraIcon ?? self.selectionTypeModalButtonCameraIcon,
      selectionTypeModalButtonGalleryIcon:
          selectionTypeModalButtonGalleryIcon ?? self.selectionTypeModalButtonGalleryIcon,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroImagePickerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.unselectedImageStateIcon == self.unselectedImageStateIcon &&
        other.overlayCursor == self.overlayCursor &&
        other.selectionTypeModalConstraints == self.selectionTypeModalConstraints &&
        other.selectionTypeModalSpacing == self.selectionTypeModalSpacing &&
        other.selectionTypeModalButtonCameraIcon == self.selectionTypeModalButtonCameraIcon &&
        other.selectionTypeModalButtonGalleryIcon == self.selectionTypeModalButtonGalleryIcon;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.unselectedImageStateIcon,
      self.overlayCursor,
      self.selectionTypeModalConstraints,
      self.selectionTypeModalSpacing,
      self.selectionTypeModalButtonCameraIcon,
      self.selectionTypeModalButtonGalleryIcon,
    );
  }

  @override
  String toString() =>
      'MyoroImagePickerThemeExtension(\n'
      '  unselectedImageStateIcon: ${self.unselectedImageStateIcon},\n'
      '  overlayCursor: ${self.overlayCursor},\n'
      '  selectionTypeModalConstraints: ${self.selectionTypeModalConstraints},\n'
      '  selectionTypeModalSpacing: ${self.selectionTypeModalSpacing},\n'
      '  selectionTypeModalButtonCameraIcon: ${self.selectionTypeModalButtonCameraIcon},\n'
      '  selectionTypeModalButtonGalleryIcon: ${self.selectionTypeModalButtonGalleryIcon},\n'
      ');';
}
