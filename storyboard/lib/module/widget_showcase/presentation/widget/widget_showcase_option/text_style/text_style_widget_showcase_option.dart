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
    this.initiallySelectedTextStyle,
    required this.onChanged,
    this.checkboxOnChanged,
  });

  /// [MyoroSingularDropdownConfiguration.label]
  final String label;

  /// [MyoroDropdownConfiguration.allowItemClearing]
  final bool allowItemClearing;

  /// Initially selected [TextStyle].
  final TextStyle? initiallySelectedTextStyle;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<TextStyle> onChanged;

  /// [MyoroSingularDropdownConfiguration.checkboxOnChanged]
  final MyoroSingularDropdownConfigurationCheckboxOnChanged<TextStyle>? checkboxOnChanged;

  @override
  Widget build(_) {
    final typography = MyoroTypographyDesignSystem.instance;

    return MyoroSingularDropdown<TextStyle>(
      controller:
          initiallySelectedTextStyle != null
              ? MyoroSingularDropdownController(initiallySelectedItem: initiallySelectedTextStyle)
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
            return MyoroMenuItem(
              textConfiguration: MyoroIconTextButtonTextConfiguration(text: typography.getTextStyleName(value)),
            );
          },
        ),
      ),
    );
  }
}
