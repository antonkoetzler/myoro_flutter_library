// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_image_picker_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroImagePickerConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroImagePickerConfiguration with _$MyoroImagePickerConfigurationMixin {}
/// ```
mixin _$MyoroImagePickerConfigurationMixin {
  MyoroImagePickerConfiguration get self => this as MyoroImagePickerConfiguration;

  MyoroImagePickerConfiguration copyWith({
    String? selectedImage,
    bool selectedImageProvided = true,
    Size? size,
    void Function(String?)? onChanged,
  }) {
    return MyoroImagePickerConfiguration(
      selectedImage: selectedImageProvided ? (selectedImage ?? self.selectedImage) : null,
      size: size ?? self.size,
      onChanged: onChanged ?? self.onChanged,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroImagePickerConfiguration &&
        other.runtimeType == runtimeType &&
        other.selectedImage == self.selectedImage &&
        other.size == self.size &&
        other.onChanged == self.onChanged;
  }

  @override
  int get hashCode {
    return Object.hash(self.selectedImage, self.size, self.onChanged);
  }

  @override
  String toString() =>
      'MyoroImagePickerConfiguration(\n'
      '  selectedImage: ${self.selectedImage},\n'
      '  size: ${self.size},\n'
      '  onChanged: ${self.onChanged},\n'
      ');';
}
