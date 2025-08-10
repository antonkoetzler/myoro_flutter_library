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

  /// Dispose function.
  void dispose() {
    _selectedImageNotifier.dispose();
  }
}
