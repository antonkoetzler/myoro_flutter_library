import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
import 'model/myoro_file_picker_style.dart';

part '_widget/_content.dart';
part '_widget/_picker_button.dart';
part '_widget/_selected_file.dart';

/// File picker of MFL.
final class MyoroFilePicker extends StatelessWidget {
  const MyoroFilePicker({super.key, required this.configuration, this.style = const MyoroFilePickerStyle()});

  /// Configuration.
  final MyoroFilePickerConfiguration configuration;

  /// Style.
  final MyoroFilePickerStyle style;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        InheritedProvider.value(value: style),
        InheritedProvider(create: (_) => MyoroFilePickerViewModel(configuration)),
      ],
      child: const _Content(),
    );
  }
}
