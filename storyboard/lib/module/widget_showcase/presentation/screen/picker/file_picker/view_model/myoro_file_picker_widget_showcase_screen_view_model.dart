import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroFilePickerWidgetShowcaseScreen].
final class MyoroFilePickerWidgetShowcaseScreenViewModel {
  /// Displays a snack bar when the file is changed.
  void onChanged(BuildContext context, MyoroFilePickerPlatformFile? selectedFile) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(
          message: selectedFile != null ? '${selectedFile.name} selected!' : 'No file selected.',
        ),
      ),
    );
  }
}
