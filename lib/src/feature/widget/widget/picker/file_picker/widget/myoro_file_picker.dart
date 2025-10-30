import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_picker_button.dart';
part '../_widget/_selected_file.dart';
part '../_widget/_myoro_file_picker_state.dart';

/// File picker of MFL.
final class MyoroFilePicker extends StatefulWidget {
  /// Default value of [style].
  static const styleDefaultValue = MyoroFilePickerStyle();

  /// Default value of [allowedExtensions].
  static const allowedExtensionsDefaultValue = <String>[];

  /// Default constructor.
  const MyoroFilePicker({
    super.key,
    this.style = styleDefaultValue,
    this.title,
    required this.fileType,
    this.allowedExtensions = allowedExtensionsDefaultValue,
    required this.onChanged,
  });

  /// Style.
  final MyoroFilePickerStyle style;

  /// Title of the picker window.
  final String? title;

  /// File type accepted.
  final MyoroFilePickerFileTypeEnum fileType;

  /// Permitted extensions when [fileallowedExtensionsType] is [MyoroFilePickerFileTypeEnum.custom].
  final List<String> allowedExtensions;

  /// Callback executed when the selected file changes
  final MyoroFilePickerOnChanged onChanged;

  /// Create state function.
  @override
  State<MyoroFilePicker> createState() => _MyoroFilePickerState();
}
