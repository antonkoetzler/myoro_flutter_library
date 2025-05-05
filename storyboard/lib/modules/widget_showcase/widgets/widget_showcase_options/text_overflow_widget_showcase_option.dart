import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [WidgetShowcaseOption] used to pick a [TextOverflow].
final class TextOverflowWidgetShowcaseOption extends StatelessWidget {
  /// [WidgetShowcaseOption.labelConfiguration]
  final WidgetShowcaseOptionLabelConfiguration? labelConfiguration;

  /// Configuration.
  final WidgetShowcaseOptionDropdownConfiguration<TextOverflow> dropdownConfiguration;

  const TextOverflowWidgetShowcaseOption({
    super.key,
    this.labelConfiguration,
    required this.dropdownConfiguration,
  });

  @override
  Widget build(BuildContext context) {
    return WidgetShowcaseOption(
      labelConfiguration:
          labelConfiguration ?? const WidgetShowcaseOptionLabelConfiguration(label: 'TextOverflow'),
      child: MyoroSingularDropdown<TextOverflow>(
        configuration: MyoroSingularDropdownConfiguration(
          initiallySelectedItem: dropdownConfiguration.initiallySelectedItem,
          allowItemClearing: dropdownConfiguration.allowItemClearing,
          menuConfiguration: MyoroMenuConfiguration(request: _request, itemBuilder: _itemBuilder),
          selectedItemBuilder: _labelBuilder,
          onChanged: dropdownConfiguration.onChanged,
        ),
      ),
    );
  }

  Set<TextOverflow> _request() {
    return TextOverflow.values.toSet();
  }

  MyoroMenuItem _itemBuilder(TextOverflow overflow) {
    return MyoroMenuItem(
      textConfiguration: MyoroIconTextButtonTextConfiguration(text: _labelBuilder(overflow)),
    );
  }

  String _labelBuilder(TextOverflow overflow) {
    return overflow.toString();
  }
}
