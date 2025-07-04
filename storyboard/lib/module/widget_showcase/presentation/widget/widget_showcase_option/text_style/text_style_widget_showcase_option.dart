import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [TextStyle] from a [MyoroSingularDropdown].
final class TextStyleWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Text style';
  static const allowItemClearingDefaultValue = MyoroDropdownConfiguration.allowItemClearingDefaultValue;

  const TextStyleWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.allowItemClearing = allowItemClearingDefaultValue,
    this.initiallySelectedItem,
    required this.onChanged,
    this.checkboxOnChanged,
  });

  /// [MyoroSingularDropdownConfiguration.label]
  final String label;

  /// [MyoroDropdownConfiguration.allowItemClearing]
  final bool allowItemClearing;

  /// Initially selected [TextStyle].
  final TextStyle? initiallySelectedItem;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<TextStyle> onChanged;

  /// [MyoroSingularDropdownConfiguration.checkboxOnChanged]
  final MyoroSingularDropdownConfigurationCheckboxOnChanged<TextStyle>? checkboxOnChanged;

  @override
  Widget build(BuildContext context) {
    final typography = MyoroTypography(context.isDarkMode);

    return MyoroSingularDropdown<TextStyle>(
      controller:
          initiallySelectedItem != null
              ? MyoroSingularDropdownController(initiallySelectedItem: initiallySelectedItem)
              : null,
      configuration: MyoroSingularDropdownConfiguration(
        label: label,
        allowItemClearing: allowItemClearing,
        onChanged: onChanged,
        checkboxOnChanged: checkboxOnChanged,
        selectedItemBuilder: typography.getTextStyleName,
        menuConfiguration: MyoroMenuConfiguration(
          request: typography.allTextStyles.toSet,
          itemBuilder: (value) {
            return MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: typography.getTextStyleName(value)));
          },
        ),
      ),
    );
  }
}
