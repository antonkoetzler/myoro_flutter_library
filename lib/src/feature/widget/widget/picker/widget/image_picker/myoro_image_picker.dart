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
  const MyoroImagePicker({super.key, required this.configuration, this.themeExtension});

  /// Configuration.
  final MyoroImagePickerConfiguration configuration;

  /// Theme extension.
  final MyoroImagePickerThemeExtension? themeExtension;

  @override
  Widget build(context) {
    final colorScheme = context.colorScheme;
    final themeExtension = this.themeExtension ?? MyoroImagePickerThemeExtension.builder(colorScheme);

    return MyoroSingularThemeExtensionWrapper(
      themeExtension: themeExtension,
      child: InheritedProvider(create: (_) => MyoroImagePickerViewModel(configuration), child: const _Content()),
    );
  }
}
