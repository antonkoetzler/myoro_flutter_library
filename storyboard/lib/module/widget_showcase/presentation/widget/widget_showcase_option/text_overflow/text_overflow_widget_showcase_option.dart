import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option to select a [TextOverflow] from a [MyoroSingularDropdown].
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

  /// [MyoroSingularDropdownConfiguration.label]
  final String label;

  /// [MyoroSingularDropdownConfiguration.allowItemClearing]
  final bool allowItemClearing;

  /// Initially selected item of the [MyoroSingularDropdown].
  final TextOverflow? selectedItem;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<TextOverflow> onChanged;

  @override
  Widget build(_) {
    return MyoroSingularDropdown<TextOverflow>(
      configuration: MyoroSingularDropdownConfiguration(
        label: label,
        allowItemClearing: allowItemClearing,
        onChanged: onChanged,
        selectedItemBuilder: (value) => value.toString(),
        menuConfiguration: MyoroSingularMenuConfiguration(
          request: TextOverflow.values.toSet,
          itemBuilder: (value) {
            return MyoroMenuItem(
              iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
                textConfiguration: MyoroTextConfiguration(text: value.toString()),
              ),
            );
          },
        ),
        selectedItem: selectedItem,
      ),
    );
  }
}
