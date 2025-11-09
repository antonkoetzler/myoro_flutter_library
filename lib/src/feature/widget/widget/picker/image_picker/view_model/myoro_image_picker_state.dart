part of 'myoro_image_picker_view_model.dart';

/// State of [MyoroImagePickerViewModel].
final class MyoroImagePickerState {
  MyoroImagePickerState(this.label, String? selectedImage, this.onChanged)
    : _selectedImageNotifier = ValueNotifier(selectedImage);

  /// Label.
  final String label;

  /// [MyoroImagePicker.onChanged]
  final MyoroImagePickerOnChanged onChanged;

  /// Picker.
  final _picker = ImagePicker();

  /// [ValueNotifier] of the selected image.
  final ValueNotifier<String?> _selectedImageNotifier;

  /// Dispose function.
  void dispose() {
    _selectedImageNotifier.dispose();
  }

  /// [_picker] getter.
  ImagePicker get picker {
    return _picker;
  }

  /// [_selectedImageNotifier] getter.
  ValueNotifier<String?> get selectedImageNotifier {
    return _selectedImageNotifier;
  }

  /// Getter of [_selectedImageNotifier]'s value.
  String? get selectedImage {
    return _selectedImageNotifier.value;
  }

  /// [_selectedImageNotifier] setter.
  set selectedImage(String? selectedImage) {
    _selectedImageNotifier.value = selectedImage;
  }
}
