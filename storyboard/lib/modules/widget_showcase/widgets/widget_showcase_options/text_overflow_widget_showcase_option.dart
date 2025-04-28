import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [WidgetShowcaseOption] used to pick a [TextOverflow].
///
/// TODO: Needs to be tested.
final class TextOverflowWidgetShowcaseOption extends StatelessWidget {
  /// [WidgetShowcaseOption.labelConfiguration]
  final WidgetShowcaseOptionLabelConfiguration? labelConfiguration;

  /// [MyoroSingularDropdownConfiguration.initiallySelectedItem]
  final TextOverflow? initiallySelectedItem;

  /// [MyoroSingularDropdownConfiguration.allowItemClearing]
  final bool allowItemClearing;

  /// [MyoroSingularDropdownConfiguration.onChanged].
  final MyoroSingularDropdownConfigurationOnChanged<TextOverflow> onChanged;

  const TextOverflowWidgetShowcaseOption({
    super.key,
    this.labelConfiguration,
    this.initiallySelectedItem,
    this.allowItemClearing =
        MyoroDropdownConfiguration.allowItemClearingDefaultValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return WidgetShowcaseOption(
      labelConfiguration:
          labelConfiguration ??
          const WidgetShowcaseOptionLabelConfiguration(label: 'TextOverflow'),
      child: MyoroSingularDropdown<TextOverflow>(
        configuration: MyoroSingularDropdownConfiguration(
          initiallySelectedItem: initiallySelectedItem,
          allowItemClearing: allowItemClearing,
          menuConfiguration: MyoroMenuConfiguration(
            request: _request,
            itemBuilder: _itemBuilder,
          ),
          selectedItemBuilder: _labelBuilder,
          onChanged: onChanged,
        ),
      ),
    );
  }

  Set<TextOverflow> _request() {
    return TextOverflow.values.toSet();
  }

  MyoroMenuItem _itemBuilder(TextOverflow overflow) {
    return MyoroMenuItem(
      textConfiguration: MyoroIconTextButtonTextConfiguration(
        text: _labelBuilder(overflow),
      ),
    );
  }

  String _labelBuilder(TextOverflow overflow) {
    return overflow.toString();
  }
}
