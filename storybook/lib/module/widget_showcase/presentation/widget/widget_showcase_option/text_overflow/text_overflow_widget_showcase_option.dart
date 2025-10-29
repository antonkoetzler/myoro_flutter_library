import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to select a [TextOverflow] from a [MyoroSingleSelectionDropdown].
final class TextOverflowWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Text overflow behavior';

  const TextOverflowWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.selectedItem,
    required this.onChanged,
  });

  /// [MyoroSingleSelectionDropdownConfiguration.label]
  final String label;

  /// Initially selected item of the [MyoroSingleSelectionDropdown].
  final TextOverflow? selectedItem;

  /// [MyoroSingleSelectionDropdownConfiguration.onChanged]
  final void Function(TextOverflow?) onChanged;

  @override
  Widget build(_) {
    return MyoroSingleSelectionDropdown<TextOverflow>(
      label: label,
      onChanged: onChanged,
      selectedItemBuilder: (value) => value.toString(),
      itemBuilder: (value) {
        return MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: value.toString()));
      },
      items: TextOverflow.values.toSet(),
      selectedItem: selectedItem,
    );
  }
}
