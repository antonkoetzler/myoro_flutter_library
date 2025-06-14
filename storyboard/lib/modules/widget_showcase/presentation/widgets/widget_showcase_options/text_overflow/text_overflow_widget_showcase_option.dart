import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to select a [TextOverflow] from a [MyoroSingularDropdown].
final class TextOverflowWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Text overflow behavior';
  static const allowItemClearingDefaultValue = MyoroDropdownConfiguration.allowItemClearingDefaultValue;

  const TextOverflowWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.allowItemClearing = allowItemClearingDefaultValue,
    required this.onChanged,
    this.checkboxOnChanged,
  });

  /// [MyoroSingularDropdownConfiguration.label]
  final String label;

  /// [MyoroSingularDropdownConfiguration.allowItemClearing]
  final bool allowItemClearing;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<TextOverflow> onChanged;

  /// [MyoroSingularDropdownConfiguration.checkboxOnChanged]
  final MyoroSingularDropdownConfigurationCheckboxOnChanged<TextOverflow>? checkboxOnChanged;

  @override
  Widget build(_) {
    return MyoroSingularDropdown<TextOverflow>(
      configuration: MyoroSingularDropdownConfiguration(
        label: label,
        allowItemClearing: allowItemClearing,
        onChanged: onChanged,
        checkboxOnChanged: checkboxOnChanged,
        selectedItemBuilder: (value) => value.toString(),
        menuConfiguration: MyoroMenuConfiguration(
          request: TextOverflow.values.toSet,
          itemBuilder: (value) {
            return MyoroMenuItem(textConfiguration: MyoroIconTextButtonTextConfiguration(text: value.toString()));
          },
        ),
      ),
    );
  }
}
