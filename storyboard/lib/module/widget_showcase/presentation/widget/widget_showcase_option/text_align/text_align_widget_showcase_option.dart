import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [TextAlign] from a [MyoroSingularDropdown].
final class TextAlignWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Text alignment';
  static const allowItemClearingDefaultValue = MyoroDropdownConfiguration.allowItemClearingDefaultValue;

  const TextAlignWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.initiallySelectedTextAlign,
    this.allowItemClearing = allowItemClearingDefaultValue,
    required this.onChanged,
    this.checkboxOnChanged,
  });

  /// [MyoroSingularDropdownConfiguration.label]
  final String label;

  /// Initially selected [TextAlign].
  final TextAlign? initiallySelectedTextAlign;

  /// [MyoroDropdownConfiguration.allowItemClearing]
  final bool allowItemClearing;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<TextAlign> onChanged;

  /// [MyoroSingularDropdownConfiguration.checkboxOnChanged]
  final MyoroSingularDropdownConfigurationCheckboxOnChanged<TextAlign>? checkboxOnChanged;

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown(
      controller:
          initiallySelectedTextAlign != null
              ? MyoroSingularDropdownController(initiallySelectedItem: initiallySelectedTextAlign)
              : null,
      configuration: MyoroSingularDropdownConfiguration(
        label: label,
        onChanged: onChanged,
        checkboxOnChanged: checkboxOnChanged,
        allowItemClearing: allowItemClearing,
        selectedItemBuilder: (value) => value.toString(),
        menuConfiguration: MyoroMenuConfiguration(
          request: TextAlign.values.toSet,
          itemBuilder: (value) {
            return MyoroMenuItem(textConfiguration: MyoroIconTextButtonTextConfiguration(text: value.toString()));
          },
        ),
      ),
    );
  }
}
