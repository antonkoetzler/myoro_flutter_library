import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_content.dart';
part '_widget/_overlay.dart';
part '_widget/_selection_type_modal.dart';
part '_widget/_selection_type_modal_button.dart';

/// Image picker of MFL.
final class MyoroImagePicker extends StatelessWidget {
  const MyoroImagePicker({super.key, required this.configuration, this.style = const MyoroImagePickerStyle()});

  /// Configuration.
  final MyoroImagePickerConfiguration configuration;

  /// Style.
  final MyoroImagePickerStyle style;

  @override
  Widget build(context) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: style),
        InheritedProvider(create: (_) => MyoroImagePickerViewModel(configuration)),
      ],
      child: const _Content(),
    );
  }
}
