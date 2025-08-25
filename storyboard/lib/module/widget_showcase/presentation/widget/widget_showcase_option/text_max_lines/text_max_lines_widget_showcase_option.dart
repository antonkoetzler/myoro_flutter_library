import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [Text.maxLines] via [MyoroSingularDropdown].
final class TextMaxLinesWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Max lines';
  static const allowItemClearingDefaultValue = MyoroDropdownConfiguration.allowItemClearingDefaultValue;
  static const selectedItemDefaultValue = 1;

  const TextMaxLinesWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.allowItemClearing = allowItemClearingDefaultValue,
    this.selectedItem = selectedItemDefaultValue,
    required this.onChanged,
  });

  /// [MyoroSingularDropdownConfiguration.label]
  final String label;

  /// [MyoroSingularDropdownConfiguration.allowItemClearing]
  final bool allowItemClearing;

  /// Initially selected item of the [MyoroSingularDropdown].
  final int selectedItem;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<int> onChanged;

  @override
  Widget build(context) {
    return MyoroSingularDropdown<int>(
      configuration: MyoroSingularDropdownConfiguration(
        label: label,
        allowItemClearing: allowItemClearing,
        onChanged: onChanged,
        selectedItemBuilder: (value) => value.toString(),
        menuConfiguration: MyoroSingularMenuConfiguration(
          request: () => List.generate(10, (int index) => index + 1).toSet(),
          itemBuilder: (value) {
            return MyoroMenuItem(
              iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
                textConfiguration: MyoroTextConfiguration(text: value.toString()),
              ),
            );
          },
        ),
        selectedItem: selectedItem,
      ),
    );
  }
}
