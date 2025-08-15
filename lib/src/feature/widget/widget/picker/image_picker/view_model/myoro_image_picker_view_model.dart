import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_image_picker_state.dart';

/// View model of [MyoroImagePicker].
final class MyoroImagePickerViewModel {
  MyoroImagePickerViewModel(MyoroImagePickerConfiguration configuration)
    : _state = MyoroImagePickerState(configuration) {
    _state.selectedImageNotifier.addListener(() => configuration.onChanged(_state.selectedImage));
  }

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
  Future<void> onTapSelectionTypeModalButton(BuildContext context, ImageSource selectionMethod) async {
    context.navigator.pop();
    await openPickerAndUpdateSelectedImage(selectionMethod);
  }

  /// Helper function to open the picker and update [MyoroImagePickerState.selectedImageNotifier].
  Future<void> openPickerAndUpdateSelectedImage([ImageSource selectionMethod = ImageSource.gallery]) async {
    final result = await _picker.pickImage(source: selectionMethod);
    if (result == null) return;
    _state.selectedImage = result.path;
  }
}
