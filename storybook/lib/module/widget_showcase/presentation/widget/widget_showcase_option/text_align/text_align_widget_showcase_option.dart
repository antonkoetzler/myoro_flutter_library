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
  final MyoroSingleMenuOnChanged<TextAlign> onChanged;

  @override
  Widget build(context) {
    return MyoroSingleSelectionDropdown(
      configuration: MyoroSingleSelectionDropdownConfiguration(
        label: label,
        onChanged: onChanged,
        selectedItemBuilder: (value) => value.toString(),
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: TextAlign.values.toSet,
          selectedItem: selectedValue,
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
