// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_image_picker_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroImagePickerConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroImagePickerConfiguration with _$MyoroImagePickerConfigurationMixin {}
/// ```
mixin _$MyoroImagePickerConfigurationMixin {
  MyoroImagePickerConfiguration get self => this as MyoroImagePickerConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroImagePickerConfiguration &&
        other.runtimeType == runtimeType &&
        other.selectedImage == self.selectedImage &&
        other.onChanged == self.onChanged;
  }

  @override
  int get hashCode {
    return Object.hash(self.selectedImage, self.onChanged);
  }

  @override
  String toString() =>
      'MyoroImagePickerConfiguration(\n'
      '  selectedImage: ${self.selectedImage},\n'
      '  onChanged: ${self.onChanged},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $MyoroImagePickerConfigurationExtension on MyoroImagePickerConfiguration {
  MyoroImagePickerConfiguration copyWith({
    String? selectedImage,
    bool selectedImageProvided = true,
    void Function(String?)? onChanged,
  }) {
    return MyoroImagePickerConfiguration(
      selectedImage: selectedImageProvided ? (selectedImage ?? self.selectedImage) : null,
      onChanged: onChanged ?? self.onChanged,
    );
  }
}
