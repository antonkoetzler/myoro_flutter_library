import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_image_picker_state.dart';

/// View model of [MyoroImagePicker].
final class MyoroImagePickerViewModel {
  MyoroImagePickerViewModel(MyoroImagePickerConfiguration configuration)
    : _state = MyoroImagePickerState(configuration);

  /// State.
  final MyoroImagePickerState _state;

  /// [_state] getter.
  MyoroImagePickerState get state => _state;

  /// Picker.
  final _picker = ImagePicker();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Opens the picker depending on the method given.
  void onTapSelectionTypeModalButton(ImageSource selectionMethod) {
    _picker.pickImage(source: selectionMethod);
  }
}
