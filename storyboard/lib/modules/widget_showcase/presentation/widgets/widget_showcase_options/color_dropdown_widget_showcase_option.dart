import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [WidgetShowcase] option to choose a [Color] from a [MyoroSingularDropdown].
final class ColorDropdownWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Color';

  const ColorDropdownWidgetShowcaseOption({super.key, this.label = labelDefaultValue, required this.onChanged});

  /// [MyoroDropdownConfiguration.label]
  final String label;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<Color> onChanged;

  @override
  Widget build(_) {
    return MyoroSingularDropdown<Color>(
      configuration: MyoroSingularDropdownConfiguration(
        label: label,
        menuConfiguration: MyoroMenuConfiguration(
          request: () => kMyoroTestColors.toSet(),
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
