import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [TextStyle] from a [MyoroSingleSelectionDropdown].
final class TextStyleWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Text style';

  const TextStyleWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.selectedItem,
    required this.onChanged,
  });

  /// [MyoroSingleSelectionDropdownConfiguration.label]
  final String label;

  /// Initially selected [TextStyle].
  final TextStyle? selectedItem;

  /// [MyoroSingleSelectionDropdownConfiguration.onChanged]
  final void Function(TextStyle?) onChanged;

  @override
  Widget build(context) {
    final typography = MyoroTypography(context.isDarkMode);

    return MyoroSingleSelectionDropdown<TextStyle>(
      label: label,
      onChanged: onChanged,
      selectedItemBuilder: typography.getTextStyleName,
      itemBuilder: (value, _) {
        return MyoroMenuIconTextButtonItem(text: typography.getTextStyleName(value));
      },
      items: typography.allTextStyles.toSet(),
      selectedItem: selectedItem,
    );
  }
}
