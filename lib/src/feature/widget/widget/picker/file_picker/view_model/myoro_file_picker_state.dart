part of 'myoro_file_picker_view_model.dart';

/// State of [MyoroFilePickerViewModel].
final class MyoroFilePickerState {
  MyoroFilePickerState(this.configuration);

  /// Configuration.
  final MyoroFilePickerConfiguration configuration;

  /// [ValueNotifier] controlling which file is selected.
  final _selectedFileNotifier = ValueNotifier<MyoroFilePickerPlatformFile?>(null);

  /// [_selectedFileNotifier] getter.
  ValueNotifier<MyoroFilePickerPlatformFile?> get selectedFileNotifier => _selectedFileNotifier;

  /// Getter of [_selectedFileNotifier]'s value.
  MyoroFilePickerPlatformFile? get selectedFile => _selectedFileNotifier.value;

  /// [_selectedFileNotifier] setter.
  set selectedFile(MyoroFilePickerPlatformFile? selectedFile) => _selectedFileNotifier.value = selectedFile;

  /// Dispose function.
  void dispose() {
    _selectedFileNotifier.dispose();
  }
}
