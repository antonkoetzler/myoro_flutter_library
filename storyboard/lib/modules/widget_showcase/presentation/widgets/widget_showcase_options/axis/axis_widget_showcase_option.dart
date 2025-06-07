import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to select a [Axis] from a [MyoroSingularDropdown].
final class DirectionWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Direction';
  static const enabledDefaultValue = true;

  const DirectionWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.enabled = enabledDefaultValue,
    required this.onChanged,
  });

  /// [MyoroDropdownConfiguration.label]
  final String label;

  /// [MyoroDropdownControllerState.enabled]
  final bool enabled;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<Axis> onChanged;

  @override
  Widget build(_) {
    return MyoroSingularDropdown<Axis>(
      controller: MyoroSingularDropdownController(enabled: enabled),
      configuration: MyoroSingularDropdownConfiguration(
        label: label,
        selectedItemBuilder: _axisName,
        menuConfiguration: MyoroMenuConfiguration(
          request: Axis.values.toSet,
          itemBuilder: (axis) {
            return MyoroMenuItem(textConfiguration: MyoroIconTextButtonTextConfiguration(text: _axisName(axis)));
          },
        ),
      ),
    );
  }

  String _axisName(Axis axis) => '${axis.name[0].toUpperCase()}${axis.name.substring(1)}';
}
