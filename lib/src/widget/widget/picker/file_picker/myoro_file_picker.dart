import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_content.dart';
part '_widget/_picker_button.dart';
part '_widget/_selected_file.dart';

/// File picker of MFL.
final class MyoroFilePicker extends StatelessWidget {
  const MyoroFilePicker({super.key, required this.configuration});

  /// Configuration.
  final MyoroFilePickerConfiguration configuration;

  @override
  Widget build(_) {
    return InheritedProvider(create: (_) => MyoroFilePickerViewModel(configuration), child: const _Content());
  }
}
