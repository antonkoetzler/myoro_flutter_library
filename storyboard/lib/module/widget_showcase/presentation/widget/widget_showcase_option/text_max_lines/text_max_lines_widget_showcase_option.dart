import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [Text.maxLines] via [MyoroSingularDropdown].
final class TextMaxLinesWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Max lines';
  static const allowItemClearingDefaultValue = MyoroDropdownConfiguration.allowItemClearingDefaultValue;
  static const initiallySelectedItemDefaultValue = 1;

  const TextMaxLinesWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.allowItemClearing = allowItemClearingDefaultValue,
    this.initiallySelectedItem = initiallySelectedItemDefaultValue,
    required this.onChanged,
    this.checkboxOnChanged,
  });

  /// [MyoroSingularDropdownConfiguration.label]
  final String label;

  /// [MyoroSingularDropdownConfiguration.allowItemClearing]
  final bool allowItemClearing;

  /// Initially selected item of the [MyoroSingularDropdown].
  final int initiallySelectedItem;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<int> onChanged;

  /// [MyoroSingularDropdownConfiguration.checkboxOnChanged]
  final MyoroSingularDropdownConfigurationCheckboxOnChanged<int>? checkboxOnChanged;

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<int>(
      controller: MyoroSingularDropdownController(initiallySelectedItem: initiallySelectedItem),
      configuration: MyoroSingularDropdownConfiguration(
        label: label,
        allowItemClearing: allowItemClearing,
        onChanged: onChanged,
        checkboxOnChanged: checkboxOnChanged,
        selectedItemBuilder: (value) => value.toString(),
        menuConfiguration: MyoroMenuConfiguration(
          request: () => List.generate(10, (int index) => index + 1).toSet(),
          itemBuilder: (value) {
            return MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: value.toString()));
          },
        ),
      ),
    );
  }
}
