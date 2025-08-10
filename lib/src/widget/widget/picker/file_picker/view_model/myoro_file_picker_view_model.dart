import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

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
  void openPicker() {
    qoiwejqwoiejoij
  }
}
