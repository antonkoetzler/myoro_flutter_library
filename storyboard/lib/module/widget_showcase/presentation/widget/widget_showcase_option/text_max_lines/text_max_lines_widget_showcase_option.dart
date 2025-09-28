import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [Text.maxLines] via [MyoroSingleSelectionDropdown].
final class TextMaxLinesWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Max lines';
  static const allowItemClearingDefaultValue = MyoroSelectionDropdownConfiguration.allowItemClearingDefaultValue;
  static const selectedItemDefaultValue = 1;

  const TextMaxLinesWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.allowItemClearing = allowItemClearingDefaultValue,
    this.selectedItem = selectedItemDefaultValue,
    required this.onChanged,
  });

  /// [MyoroSingleSelectionDropdownConfiguration.label]
  final String label;

  /// [MyoroSingleSelectionDropdownConfiguration.allowItemClearing]
  final bool allowItemClearing;

  /// Initially selected item of the [MyoroSingleSelectionDropdown].
  final int selectedItem;

  /// [MyoroSingleSelectionDropdownConfiguration.onChanged]
  final MyoroSingleSelectionDropdownOnChanged<int> onChanged;

  @override
  Widget build(context) {
    return MyoroSingleSelectionDropdown<int>(
      configuration: MyoroSingleSelectionDropdownConfiguration(
        label: label,
        allowItemClearing: allowItemClearing,
        onChanged: onChanged,
        selectedItemBuilder: (value) => value.toString(),
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: () => List.generate(10, (int index) => index + 1).toSet(),
          selectedItem: selectedItem,
          itemBuilder: (value) {
            return MyoroMenuItem(
              iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
                textConfiguration: MyoroTextConfiguration(text: value.toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}
