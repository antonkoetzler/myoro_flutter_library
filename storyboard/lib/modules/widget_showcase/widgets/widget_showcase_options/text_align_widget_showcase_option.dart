import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [TextAlign] [WidgetShowcaseOption].
///
/// TODO: Needs to be tested.
final class TextAlignWidgetShowcaseOption extends StatelessWidget {
  /// [WidgetShowcaseOption.labelConfiguration]
  final WidgetShowcaseOptionLabelConfiguration? labelConfiguration;

  /// Configuration.
  final WidgetShowcaseOptionDropdownConfiguration<TextAlign> dropdownConfiguration;

  const TextAlignWidgetShowcaseOption({
    super.key,
    this.labelConfiguration,
    required this.dropdownConfiguration,
  });

  @override
  Widget build(BuildContext context) {
    return WidgetShowcaseOption(
      labelConfiguration:
          labelConfiguration ?? const WidgetShowcaseOptionLabelConfiguration(label: 'TextAlign'),
      child: MyoroSingularDropdown<TextAlign>(
        configuration: MyoroSingularDropdownConfiguration(
          menuConfiguration: MyoroMenuConfiguration(request: _request, itemBuilder: _itemBuilder),
          selectedItemBuilder: _labelBuilder,
          initiallySelectedItem: dropdownConfiguration.initiallySelectedItem,
          onChanged: dropdownConfiguration.onChanged,
        ),
      ),
    );
  }

  Set<TextAlign> _request() {
    return TextAlign.values.toSet();
  }

  MyoroMenuItem _itemBuilder(TextAlign textAlign) {
    return MyoroMenuItem(
      textConfiguration: MyoroIconTextButtonTextConfiguration(text: _labelBuilder(textAlign)),
    );
  }

  String _labelBuilder(TextAlign textAlign) {
    return textAlign.name;
  }
}
