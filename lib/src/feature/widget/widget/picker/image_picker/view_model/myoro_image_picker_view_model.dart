import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_image_picker_state.dart';

/// View model of [MyoroImagePicker].
final class MyoroImagePickerViewModel {
  MyoroImagePickerViewModel(String? selectedImage, MyoroImagePickerOnChanged onChanged)
    : _state = MyoroImagePickerState(selectedImage, onChanged) {
    _state.selectedImageNotifier.addListener(() => onChanged(_state.selectedImage));
  }

  /// State.
  final MyoroImagePickerState _state;

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
    final result = await _state.picker.pickImage(source: selectionMethod);
    if (result == null) return;
    _state.selectedImage = result.path;
  }

  /// [_state] getter.
  MyoroImagePickerState get state {
    return _state;
  }
}
