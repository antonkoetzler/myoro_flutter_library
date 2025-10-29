import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroImagePickerWidgetShowcaseScreen].
final class MyoroImagePickerWidgetShowcaseScreenViewModel {
  /// Snack bar displayed when an image is selected.
  void onChangedSnackBar(BuildContext context, String? selectedImage) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(message: selectedImage != null ? '$selectedImage selected!' : 'Image deselected.'),
    );
  }
}
