import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A group of [MyoroCheckbox]s.
class MyoroGroupCheckbox extends StatelessWidget {
  /// Controller.
  final MyoroGroupCheckboxController controller;

  /// Configuration.
  final MyoroGroupCheckboxConfiguration configuration;

  const MyoroGroupCheckbox({super.key, required this.controller, required this.configuration});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroGroupCheckboxThemeExtension>();

    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (_, MyoroGroupCheckboxItems checkboxes, __) {
        return Wrap(
          direction: configuration.direction,
          spacing: configuration.spacing ?? themeExtension.spacing,
          runSpacing: configuration.runSpacing ?? themeExtension.runSpacing,
          children:
              checkboxes.entries.map<Widget>((MapEntry<String, bool> entry) {
                return MyoroCheckbox(
                  configuration: MyoroCheckboxConfiguration(
                    label: entry.key,
                    value: entry.value,
                    onChanged: (bool value) {
                      controller.toggle(entry.key, value);
                      configuration.onChanged?.call(entry.key, checkboxes);
                    },
                  ),
                );
              }).toList(),
        );
      },
    );
  }
}
