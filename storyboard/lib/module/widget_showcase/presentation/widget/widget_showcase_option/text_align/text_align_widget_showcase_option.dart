import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to choose a [TextAlign] from a [MyoroSingleDropdown].
final class TextAlignWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Text alignment';
  static const allowItemClearingDefaultValue = MyoroDropdownConfiguration.allowItemClearingDefaultValue;

  const TextAlignWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.selectedValue,
    this.allowItemClearing = allowItemClearingDefaultValue,
    required this.onChanged,
  });

  /// [MyoroSingleDropdownConfiguration.label]
  final String label;

  /// Initially selected [TextAlign].
  final TextAlign? selectedValue;

  /// [MyoroDropdownConfiguration.allowItemClearing]
  final bool allowItemClearing;

  /// [MyoroSingleDropdownConfiguration.onChanged]
  final MyoroSingleDropdownOnChanged<TextAlign> onChanged;

  @override
  Widget build(context) {
    return MyoroSingleDropdown(
      configuration: MyoroSingleDropdownConfiguration(
        label: label,
        onChanged: onChanged,
        allowItemClearing: allowItemClearing,
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
