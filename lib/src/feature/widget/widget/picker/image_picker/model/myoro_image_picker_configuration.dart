import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_image_picker_configuration.g.dart';

/// Configuration model of [MyoroImagePicker].
@immutable
@myoroModel
final class MyoroImagePickerConfiguration with _$MyoroImagePickerConfigurationMixin {
  const MyoroImagePickerConfiguration({this.selectedImage, required this.onChanged});

  MyoroImagePickerConfiguration.fake() : selectedImage = null, onChanged = ((_) {});

  /// Selected image.
  final String? selectedImage;

  /// Callback executed when an image is selected or unselected.
  final MyoroImagePickerOnChanged onChanged;
}
