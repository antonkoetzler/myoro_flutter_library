import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to select a [Axis] from a [MyoroSingularDropdown].
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

  /// [MyoroDropdownConfiguration.label]
  final String label;

  /// [MyoroDropdownControllerState.enabled]
  final bool enabled;

  /// Initially selected [Axis] of the [MyoroSingularDropdown].
  final Axis initialDirection;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<Axis> onChanged;

  @override
  Widget build(_) {
    return MyoroSingularDropdown<Axis>(
      configuration: MyoroSingularDropdownConfiguration(
        label: label,
        selectedItemBuilder: _axisName,
        allowItemClearing: false,
        menuConfiguration: MyoroSingularMenuConfiguration(
          request: Axis.values.toSet,
          itemBuilder: (axis) {
            return MyoroMenuItem(
              iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
                textConfiguration: MyoroTextConfiguration(text: _axisName(axis)),
              ),
            );
          },
        ),
        enabled: enabled,
        selectedItem: initialDirection,
      ),
    );
  }

  String _axisName(Axis axis) => '${axis.name[0].toUpperCase()}${axis.name.substring(1)}';
}
