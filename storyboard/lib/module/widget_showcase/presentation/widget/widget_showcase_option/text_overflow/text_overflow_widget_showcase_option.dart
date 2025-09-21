import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to select a [TextOverflow] from a [MyoroSingleDropdown].
final class TextOverflowWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Text overflow behavior';
  static const allowItemClearingDefaultValue = MyoroDropdownConfiguration.allowItemClearingDefaultValue;

  const TextOverflowWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.allowItemClearing = allowItemClearingDefaultValue,
    this.selectedItem,
    required this.onChanged,
  });

  /// [MyoroSingleDropdownConfiguration.label]
  final String label;

  /// [MyoroSingleDropdownConfiguration.allowItemClearing]
  final bool allowItemClearing;

  /// Initially selected item of the [MyoroSingleDropdown].
  final TextOverflow? selectedItem;

  /// [MyoroSingleDropdownConfiguration.onChanged]
  final MyoroSingleDropdownOnChanged<TextOverflow> onChanged;

  @override
  Widget build(_) {
    return MyoroSingleDropdown<TextOverflow>(
      configuration: MyoroSingleDropdownConfiguration(
        label: label,
        allowItemClearing: allowItemClearing,
        onChanged: onChanged,
        selectedItemBuilder: (value) => value.toString(),
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: TextOverflow.values.toSet,
          selectedItem: selectedItem,
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
