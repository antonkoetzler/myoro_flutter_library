import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [Text.maxLines] via [MyoroSingleSelectionDropdown].
final class TextMaxLinesWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Max lines';
  static const selectedItemDefaultValue = 1;

  const TextMaxLinesWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.selectedItem = selectedItemDefaultValue,
    required this.onChanged,
  });

  /// [MyoroSingleSelectionDropdownConfiguration.label]
  final String label;

  /// Initially selected item of the [MyoroSingleSelectionDropdown].
  final int selectedItem;

  /// [MyoroSingleSelectionDropdownConfiguration.onChanged]
  final void Function(int?) onChanged;

  @override
  Widget build(context) {
    return MyoroSingleSelectionDropdown<int>(
      label: label,
      onChanged: onChanged,
      selectedItemBuilder: (value) => value.toString(),
      itemBuilder: (value, _) {
        return MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: value.toString()));
      },
      items: List.generate(10, (int index) => index + 1).toSet(),
      selectedItem: selectedItem,
    );
  }
}
