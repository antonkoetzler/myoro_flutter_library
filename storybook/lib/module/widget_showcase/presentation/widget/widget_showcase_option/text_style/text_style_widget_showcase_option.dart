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
  final MyoroSingleMenuOnChanged<TextStyle> onChanged;

  @override
  Widget build(context) {
    final typography = MyoroTypography(context.isDarkMode);

    return MyoroSingleSelectionDropdown<TextStyle>(
      configuration: MyoroSingleSelectionDropdownConfiguration(
        label: label,
        onChanged: onChanged,
        selectedItemBuilder: typography.getTextStyleName,
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: typography.allTextStyles.toSet,
          selectedItem: selectedItem,
          itemBuilder: (value) {
            return MyoroMenuIconTextButtonItem(
              textConfiguration: MyoroTextConfiguration(text: typography.getTextStyleName(value)),
            );
          },
        ),
      ),
    );
  }
}
