import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [TextAlign] from a [MyoroSingularDropdown].
final class TextAlignWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Text alignment';

  const TextAlignWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    required this.onChanged,
    required this.checkboxOnChanged,
  });

  /// [MyoroSingularDropdownConfiguration.label]
  final String label;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<TextAlign> onChanged;

  /// [MyoroSingularDropdownConfiguration.checkboxOnChanged]
  final MyoroSingularDropdownConfigurationCheckboxOnChanged<TextAlign> checkboxOnChanged;

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown(
      configuration: MyoroSingularDropdownConfiguration(
        label: label,
        onChanged: onChanged,
        checkboxOnChanged: checkboxOnChanged,
        selectedItemBuilder: (value) => value.toString(),
        menuConfiguration: MyoroMenuConfiguration(
          request: TextAlign.values.toSet,
          itemBuilder: (value) {
            return MyoroMenuItem(textConfiguration: MyoroIconTextButtonTextConfiguration(text: value.toString()));
          },
        ),
      ),
    );
  }
}
