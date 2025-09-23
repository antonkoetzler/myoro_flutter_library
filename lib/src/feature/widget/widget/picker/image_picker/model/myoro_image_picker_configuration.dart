import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_image_picker_configuration.g.dart';

/// Configuration model of [MyoroImagePicker].
@immutable
@myoroModel
final class MyoroImagePickerConfiguration with _$MyoroImagePickerConfigurationMixin {
  const MyoroImagePickerConfiguration({this.selectedImage, required this.onChanged});

  // coverage:ignore-start
  MyoroImagePickerConfiguration.fake() : selectedImage = null, onChanged = ((_) {});
  // coverage:ignore-end

  /// Selected image.
  final String? selectedImage;

  /// Callback executed when an image is selected or unselected.
  final MyoroImagePickerOnChanged onChanged;

  MyoroImagePickerConfiguration copyWith({
    String? selectedImage,
    bool selectedImageProvided = true,
    MyoroImagePickerOnChanged? onChanged,
  }) {
    return MyoroImagePickerConfiguration(
      selectedImage: selectedImageProvided ? (selectedImage ?? this.selectedImage) : null,
      onChanged: onChanged ?? this.onChanged,
    );
  }
}
