import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [Text.maxLines] via [MyoroSingularDropdown].
final class TextMaxLinesWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Max lines';

  const TextMaxLinesWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.allowItemClearing = MyoroDropdownConfiguration.allowItemClearingDefaultValue,
    required this.onChanged,
    required this.checkboxOnChanged,
  });

  /// [MyoroSingularDropdownConfiguration.label]
  final String label;

  /// [MyoroSingularDropdownConfiguration.allowItemClearing]
  final bool allowItemClearing;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<int> onChanged;

  /// [MyoroSingularDropdownConfiguration.checkboxOnChanged]
  final MyoroSingularDropdownConfigurationCheckboxOnChanged<int> checkboxOnChanged;

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<int>(
      controller: MyoroSingularDropdownController(initiallySelectedItem: 1),
      configuration: MyoroSingularDropdownConfiguration(
        label: label,
        allowItemClearing: allowItemClearing,
        onChanged: onChanged,
        checkboxOnChanged: checkboxOnChanged,
        selectedItemBuilder: (value) => value.toString(),
        menuConfiguration: MyoroMenuConfiguration(
          request: () => List.generate(10, (int index) => index + 1).toSet(),
          itemBuilder: (value) {
            return MyoroMenuItem(textConfiguration: MyoroIconTextButtonTextConfiguration(text: value.toString()));
          },
        ),
      ),
    );
  }
}
