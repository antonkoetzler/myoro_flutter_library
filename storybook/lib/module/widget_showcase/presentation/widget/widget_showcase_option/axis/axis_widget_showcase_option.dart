import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to select a [Axis] from a [MyoroSingleSelectionDropdown].
final class AxisWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Direction';
  static const enabledDefaultValue = true;

  const AxisWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.enabled = enabledDefaultValue,
    required this.initialDirection,
    required this.onChanged,
  });

  /// [MyoroSelectionDropdownConfiguration.label]
  final String label;

  /// [MyoroDropdownControllerState.enabled]
  final bool enabled;

  /// Initially selected [Axis] of the [MyoroSingleSelectionDropdown].
  final Axis initialDirection;

  /// [MyoroSingleSelectionDropdownConfiguration.onChanged]
  final void Function(Axis?) onChanged;

  @override
  Widget build(_) {
    return MyoroSingleSelectionDropdown<Axis>(
      label: label,
      selectedItemBuilder: _axisName,
      onChanged: onChanged,
      itemBuilder: (axis, _) {
        return MyoroMenuIconTextButtonItem(text: _axisName(axis));
      },
      items: Axis.values.toSet(),
      selectedItem: initialDirection,
    );
  }

  String _axisName(Axis axis) => '${axis.name[0].toUpperCase()}${axis.name.substring(1)}';
}
