part of 'myoro_file_picker_view_model.dart';

/// State of [MyoroFilePickerViewModel].
final class MyoroFilePickerState {
  MyoroFilePickerState(this.title, this.fileType, this.allowedExtensions, this.onChanged);

  /// [MyoroFilePicker.title]
  final String? title;

  /// [MyoroFilePicker.fileType]
  final MyoroFilePickerFileTypeEnum fileType;

  /// [MyoroFilePicker.allowedExtensions]
  final List<String> allowedExtensions;

  /// [MyoroFilePicker.onChanged]
  final MyoroFilePickerOnChanged onChanged;

  /// [ValueNotifier] controlling which file is selected.
  final _selectedFileNotifier = ValueNotifier<MyoroFilePickerPlatformFile?>(null);

  /// Dispose function.
  void dispose() {
    _selectedFileNotifier.dispose();
  }

  /// [_selectedFileNotifier] getter.
  ValueNotifier<MyoroFilePickerPlatformFile?> get selectedFileNotifier {
    return _selectedFileNotifier;
  }

  /// Getter of [_selectedFileNotifier]'s value.
  MyoroFilePickerPlatformFile? get selectedFile {
    return _selectedFileNotifier.value;
  }

  /// [_selectedFileNotifier] setter.
  set selectedFile(MyoroFilePickerPlatformFile? selectedFile) {
    _selectedFileNotifier.value = selectedFile;
  }
}
