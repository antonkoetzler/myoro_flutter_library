import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [TextStyle] from a [MyoroSingleDropdown].
final class TextStyleWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Text style';
  static const allowItemClearingDefaultValue = MyoroDropdownConfiguration.allowItemClearingDefaultValue;

  const TextStyleWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.allowItemClearing = allowItemClearingDefaultValue,
    this.selectedItem,
    required this.onChanged,
  });

  /// [MyoroSingleDropdownConfiguration.label]
  final String label;

  /// [MyoroDropdownConfiguration.allowItemClearing]
  final bool allowItemClearing;

  /// Initially selected [TextStyle].
  final TextStyle? selectedItem;

  /// [MyoroSingleDropdownConfiguration.onChanged]
  final MyoroSingleDropdownOnChanged<TextStyle> onChanged;

  @override
  Widget build(context) {
    final typography = MyoroTypography(context.isDarkMode);

    return MyoroSingleDropdown<TextStyle>(
      configuration: MyoroSingleDropdownConfiguration(
        label: label,
        allowItemClearing: allowItemClearing,
        onChanged: onChanged,
        selectedItemBuilder: typography.getTextStyleName,
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: typography.allTextStyles.toSet,
          selectedItem: selectedItem,
          itemBuilder: (value) {
            return MyoroMenuItem(
              iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
                textConfiguration: MyoroTextConfiguration(text: typography.getTextStyleName(value)),
              ),
            );
          },
        ),
      ),
    );
  }
}
