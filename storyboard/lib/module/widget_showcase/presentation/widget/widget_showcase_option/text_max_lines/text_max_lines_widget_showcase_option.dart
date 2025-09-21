import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [Text.maxLines] via [MyoroSingleDropdown].
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

  /// [MyoroSingleDropdownConfiguration.label]
  final String label;

  /// [MyoroSingleDropdownConfiguration.allowItemClearing]
  final bool allowItemClearing;

  /// Initially selected item of the [MyoroSingleDropdown].
  final int selectedItem;

  /// [MyoroSingleDropdownConfiguration.onChanged]
  final MyoroSingleDropdownOnChanged<int> onChanged;

  @override
  Widget build(context) {
    return MyoroSingleDropdown<int>(
      configuration: MyoroSingleDropdownConfiguration(
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
