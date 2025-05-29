import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [Color] from a [MyoroSingularDropdown].
final class ColorDropdownWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Color';
  static const enabledDefaultValue = true;

  const ColorDropdownWidgetShowcaseOption({
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
  final MyoroSingularDropdownConfigurationOnChanged<Color> onChanged;

  @override
  Widget build(_) {
    return MyoroSingularDropdown<Color>(
      controller: MyoroSingularDropdownController(enabled: enabled),
      configuration: MyoroSingularDropdownConfiguration(
        label: label,
        menuConfiguration: MyoroMenuConfiguration(
          request: kMyoroTestColors.toSet,
          itemBuilder: (color) {
            return MyoroMenuItem(
              textConfiguration: MyoroIconTextButtonTextConfiguration(text: color.hexadecimalFormat),
            );
          },
        ),
        selectedItemBuilder: (color) => color.hexadecimalFormat,
        onChanged: onChanged,
      ),
    );
  }
}
