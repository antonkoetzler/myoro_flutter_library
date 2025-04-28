import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [TextStyle] [WidgetShowcaseOption].
///
/// TODO: Needs to be tested.
final class TextStyleWidgetShowcaseOption extends StatelessWidget {
  /// [WidgetShowcaseOption.labelConfiguration]
  final WidgetShowcaseOptionLabelConfiguration? labelConfiguration;

  /// [MyoroSingularDropdownConfiguration] arguments that can be passed.
  final WidgetShowcaseOptionDropdownConfiguration<TextStyle> dropdownConfiguration;

  const TextStyleWidgetShowcaseOption({
    super.key,
    this.labelConfiguration,
    required this.dropdownConfiguration,
  });

  @override
  Widget build(BuildContext context) {
    return WidgetShowcaseOption(
      labelConfiguration:
          labelConfiguration ?? const WidgetShowcaseOptionLabelConfiguration(label: 'Text style'),
      child: MyoroSingularDropdown(
        configuration: MyoroSingularDropdownConfiguration<TextStyle>(
          menuConfiguration: MyoroMenuConfiguration(request: _request, itemBuilder: _itemBuilder),
          initiallySelectedItem: dropdownConfiguration.initiallySelectedItem,
          allowItemClearing: dropdownConfiguration.allowItemClearing,
          selectedItemBuilder: _selectedItemBuilder,
          onChanged: dropdownConfiguration.onChanged,
        ),
      ),
    );
  }

  Set<TextStyle> _request() {
    return MyoroTypographyDesignSystem.instance.allTextStyles.toSet();
  }

  MyoroMenuItem _itemBuilder(TextStyle textStyle) {
    return MyoroMenuItem(
      textConfiguration: MyoroIconTextButtonTextConfiguration(
        text: _selectedItemBuilder(textStyle),
      ),
    );
  }

  String _selectedItemBuilder(TextStyle textStyle) {
    return MyoroTypographyDesignSystem.instance.getTextStyleName(textStyle);
  }
}
