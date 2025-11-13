import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [Color] from a [MyoroSingleSelectionDropdown].
final class ColorWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Color';
  static const enabledDefaultValue = true;

  const ColorWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.enabled = enabledDefaultValue,
    this.selectedColor,
    required this.onChanged,
  });

  /// [MyoroSelectionDropdownConfiguration.label]
  final String label;

  /// [MyoroDropdownControllerState.enabled]
  final bool enabled;

  /// Initial [Color].
  final Color? selectedColor;

  /// [MyoroSingleSelectionDropdownConfiguration.onChanged]
  final ValueChanged<Color?> onChanged;

  @override
  Widget build(context) {
    return MyoroSingleSelectionDropdown<Color>(
      label: label,
      enabled: enabled,
      selectedItem: selectedColor,
      onChanged: onChanged,
      selectedItemBuilder: (color) => color.hexadecimalFormat,
      itemBuilder: (color, _) {
        return MyoroMenuButtonItem(
          builder: (_, _) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                spacing: 8,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(kMyoroBorderRadius), color: color),
                  ),
                  Expanded(child: Text(color.hexadecimalFormat)),
                ],
              ),
            );
          },
        );
      },
      items: kMyoroTestColors.toSet(),
    );
  }
}
