import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_content.dart';
part '../_widget/_overlay.dart';
part '../_widget/_selection_type_modal.dart';
part '../_widget/_selection_type_modal_button.dart';

/// Image picker of MFL.
final class MyoroImagePicker extends StatelessWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroImagePickerStyle();

  /// Default constructor.
  const MyoroImagePicker({super.key, this.style = styleDefaultValue, this.selectedImage, required this.onChanged});

  /// Style.
  final MyoroImagePickerStyle style;

  /// Selected image.
  final String? selectedImage;

  /// Callback executed when an image is selected or unselected.
  final MyoroImagePickerOnChanged onChanged;

  @override
  Widget build(context) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: style),
        InheritedProvider(
          create: (_) => MyoroImagePickerViewModel(selectedImage, onChanged),
          dispose: (_, v) => v.dispose(),
        ),
      ],
      child: const _Content(),
    );
  }
}
