import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose an [InputBorder] from a [MyoroSingleSelectionDropdown].
final class InputBorderWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Input Border';
  static const enabledDefaultValue = true;

  const InputBorderWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.enabled = enabledDefaultValue,
    this.selectedBorder,
    required this.onChanged,
  });

  /// [MyoroSelectionDropdownConfiguration.label]
  final String label;

  /// [MyoroDropdownControllerState.enabled]
  final bool enabled;

  /// Initial [InputBorder].
  final InputBorder? selectedBorder;

  /// [MyoroSingleSelectionDropdownConfiguration.onChanged]
  final MyoroSingleMenuOnChanged<InputBorder> onChanged;

  @override
  Widget build(_) {
    return MyoroSingleSelectionDropdown<InputBorder>(
      configuration: MyoroSingleSelectionDropdownConfiguration(
        label: label,
        selectedItemBuilder: _getInputBorderName,
        onChanged: onChanged,
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: _getTestInputBorders().toSet,
          selectedItem: selectedBorder,
          itemBuilder: (border) {
            return MyoroMenuIconTextButtonItem(
              configuration: MyoroIconTextButtonConfiguration(
                textConfiguration: MyoroTextConfiguration(text: _getInputBorderName(border)),
              ),
            );
          },
        ),
        enabled: enabled,
      ),
    );
  }

  String _getInputBorderName(InputBorder border) {
    if (border is OutlineInputBorder) {
      return 'Outlined (${border.borderSide.width.toStringAsFixed(1)}px)';
    } else if (border is UnderlineInputBorder) {
      return 'Underlined (${border.borderSide.width.toStringAsFixed(1)}px)';
    } else if (border == InputBorder.none) {
      return 'None';
    }
    return 'Custom';
  }

  List<InputBorder> _getTestInputBorders() {
    return [
      OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.blue, width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red, width: 2.0),
        borderRadius: BorderRadius.circular(12.0),
      ),
      OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.green, width: 1.0),
        borderRadius: BorderRadius.circular(4.0),
      ),
      const UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 1.0)),
      const UnderlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 2.0)),
      const UnderlineInputBorder(borderSide: BorderSide(color: Colors.green, width: 1.0)),
      InputBorder.none,
    ];
  }
}
