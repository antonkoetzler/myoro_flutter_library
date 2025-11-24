import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [Border] from a [MyoroSingleSelectionDropdown].
final class BorderWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Border';
  static const enabledDefaultValue = true;

  const BorderWidgetShowcaseOption({
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

  /// Initial [Border].
  final Border? selectedBorder;

  /// [MyoroSingleSelectionDropdownConfiguration.onChanged]
  final void Function(Border?) onChanged;

  @override
  Widget build(_) {
    return MyoroSingleSelectionDropdown<Border>(
      label: label,
      selectedItemBuilder: _getBorderName,
      onChanged: onChanged,
      itemBuilder: (_, border) {
        return MyoroMenuIconTextButtonItem(text: _getBorderName(border));
      },
      items: _getTestBorders().toSet(),
      selectedItem: selectedBorder,
    );
  }

  String _getBorderName(Border border) {
    final top = border.top;
    final color = top.color.hexadecimalFormat;
    final width = top.width.toStringAsFixed(1);
    final style = top.style.name;
    return '$color, ${width}px, $style';
  }

  List<Border> _getTestBorders() {
    return [
      Border.all(color: Colors.red, width: 1.0, style: BorderStyle.solid),
      Border.all(color: Colors.blue, width: 2.0, style: BorderStyle.solid),
      Border.all(color: Colors.green, width: 1.0, style: BorderStyle.solid),
      Border.all(color: Colors.orange, width: 3.0, style: BorderStyle.solid),
      Border.all(color: Colors.purple, width: 1.0, style: BorderStyle.solid),
      Border.all(color: Colors.red, width: 1.0, style: BorderStyle.none),
      Border.all(color: Colors.blue, width: 2.0, style: BorderStyle.none),
      Border.all(color: Colors.green, width: 1.0, style: BorderStyle.none),
    ];
  }
}
