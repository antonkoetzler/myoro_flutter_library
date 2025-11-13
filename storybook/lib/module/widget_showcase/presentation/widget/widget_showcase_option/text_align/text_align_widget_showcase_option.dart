import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [TextAlign] from a [MyoroSingleSelectionDropdown].
final class TextAlignWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Text alignment';

  const TextAlignWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.selectedValue,
    required this.onChanged,
  });

  /// [MyoroSingleSelectionDropdownConfiguration.label]
  final String label;

  /// Initially selected [TextAlign].
  final TextAlign? selectedValue;

  /// [MyoroSingleSelectionDropdownConfiguration.onChanged]
  final void Function(TextAlign?) onChanged;

  @override
  Widget build(context) {
    return MyoroSingleSelectionDropdown<TextAlign>(
      label: label,
      onChanged: onChanged,
      selectedItemBuilder: (value) => value.toString(),
      itemBuilder: (value, _) {
        return MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: value.toString()));
      },
      items: TextAlign.values.toSet(),
      selectedItem: selectedValue,
    );
  }
}
