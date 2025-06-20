import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [Color] from a [MyoroSingularDropdown].
final class ColorWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Color';
  static const enabledDefaultValue = true;

  const ColorWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.enabled = enabledDefaultValue,
    this.initiallySelectedColor,
    required this.onChanged,
    this.checkboxOnChanged,
  });

  /// [MyoroDropdownConfiguration.label]
  final String label;

  /// [MyoroDropdownControllerState.enabled]
  final bool enabled;

  /// Initial [Color].
  final Color? initiallySelectedColor;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<Color> onChanged;

  /// [MyoroSingularDropdownConfiguration.checkboxOnChanged].
  final MyoroSingularDropdownConfigurationCheckboxOnChanged<Color>? checkboxOnChanged;

  @override
  Widget build(_) {
    return MyoroSingularDropdown<Color>(
      controller: MyoroSingularDropdownController(enabled: enabled, initiallySelectedItem: initiallySelectedColor),
      configuration: MyoroSingularDropdownConfiguration(
        label: label,
        menuConfiguration: MyoroMenuConfiguration(
          request: kMyoroTestColors.toSet,
          itemBuilder: (color) {
            return MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: color.hexadecimalFormat));
          },
        ),
        selectedItemBuilder: (color) => color.hexadecimalFormat,
        onChanged: onChanged,
        checkboxOnChanged: checkboxOnChanged,
      ),
    );
  }
}
