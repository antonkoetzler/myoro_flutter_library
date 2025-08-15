part of 'myoro_image_picker_view_model.dart';

/// State of [MyoroImagePickerViewModel].
final class MyoroImagePickerState {
  MyoroImagePickerState(this.configuration) : _selectedImageNotifier = ValueNotifier(configuration.selectedImage);

  /// Configuration.
  final MyoroImagePickerConfiguration configuration;

  /// [ValueNotifier] of the selected image.
  final ValueNotifier<String?> _selectedImageNotifier;

  /// [_selectedImageNotifier] getter.
  ValueNotifier<String?> get selectedImageNotifier => _selectedImageNotifier;

  /// Getter of [_selectedImageNotifier]'s value.
  String? get selectedImage => _selectedImageNotifier.value;

  /// [_selectedImageNotifier] setter.
  set selectedImage(String? selectedImage) => _selectedImageNotifier.value = selectedImage;

  /// Dispose function.
  void dispose() {
    _selectedImageNotifier.dispose();
  }
}
