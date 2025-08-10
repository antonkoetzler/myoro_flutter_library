part of 'myoro_file_picker_view_model.dart';

/// State of [MyoroFilePickerViewModel].
final class MyoroFilePickerState {
  MyoroFilePickerState(this.configuration) : _selectedFileNotifier = ValueNotifier(configuration.selectedFile);

  /// Configuration.
  final MyoroFilePickerConfiguration configuration;

  /// [ValueNotifier] controlling which file is selected.
  final ValueNotifier<String?> _selectedFileNotifier;

  /// [_selectedFileNotifier] getter.
  ValueNotifier<String?> get selectedFileNotifier => _selectedFileNotifier;

  /// Getter of [_selectedFileNotifier]'s value.
  String? get selectedFile => _selectedFileNotifier.value;

  /// [_selectedFileNotifier] setter.
  set selectedFile(String? selectedFile) => _selectedFileNotifier.value = selectedFile;

  // Dispose function.
  void dispose() {
    _selectedFileNotifier.dispose();
  }
}
