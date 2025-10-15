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
  final MyoroSingleMenuOnChanged<Axis> onChanged;

  @override
  Widget build(_) {
    return MyoroSingleSelectionDropdown<Axis>(
      configuration: MyoroSingleSelectionDropdownConfiguration(
        label: label,
        selectedItemBuilder: _axisName,
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: Axis.values.toSet,
          selectedItem: initialDirection,
          itemBuilder: (axis) {
            return MyoroMenuItem(
              iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
                textConfiguration: MyoroTextConfiguration(text: _axisName(axis)),
              ),
            );
          },
        ),
        enabled: enabled,
      ),
    );
  }

  String _axisName(Axis axis) => '${axis.name[0].toUpperCase()}${axis.name.substring(1)}';
}
