import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

// Conditional imports to avoid dbus dependency on Web
import 'file_picker_web.dart' if (dart.library.io) 'file_picker_native.dart';

part 'myoro_file_picker_state.dart';

/// View model of [MyoroFilePicker].
final class MyoroFilePickerViewModel {
  MyoroFilePickerViewModel(MyoroFilePickerConfiguration configuration) : _state = MyoroFilePickerState(configuration) {
    _state.selectedFileNotifier.addListener(() => configuration.onChanged(_state.selectedFile));
  }

  /// State.
  final MyoroFilePickerState _state;

  /// [_state] getter.
  MyoroFilePickerState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Opens the file picker.
  Future<void> openPicker() async {
    final selectedFileNotifier = state.selectedFileNotifier;
    final configuration = _state.configuration;
    final title = configuration.title;
    final fileType = configuration.fileType;
    final allowedExtensions = configuration.allowedExtensions;

    final result = await FilePicker.platform.pickFiles(
      dialogTitle: title!,
      allowMultiple: false,
      type: fileType.filePickerValue,
      allowedExtensions: allowedExtensions,
    );

    if (result != null) {
      final file = result.files.first;
      selectedFileNotifier.value = MyoroFilePickerPlatformFile(
        name: file.name,
        size: file.size,
        bytes: file.bytes!,
        path: file.path,
      );
    }
  }
}
