import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '_widget/_content.dart';
part '_widget/_picker_button.dart';
part '_widget/_selected_file.dart';

/// File picker of MFL.
final class MyoroFilePicker extends StatelessWidget {
  const MyoroFilePicker({super.key, required this.configuration, this.themeExtension});

  /// Configuration.
  final MyoroFilePickerConfiguration configuration;

  /// Theme extension.
  final MyoroFilePickerThemeExtension? themeExtension;

  @override
  Widget build(BuildContext context) {
    final resolvedThemeExtension = themeExtension ?? context.resolveThemeExtension<MyoroFilePickerThemeExtension>();

    final child = InheritedProvider(create: (_) => MyoroFilePickerViewModel(configuration), child: const _Content());

    return MyoroSingularThemeExtensionWrapper(themeExtension: resolvedThemeExtension, child: child);
  }
}
