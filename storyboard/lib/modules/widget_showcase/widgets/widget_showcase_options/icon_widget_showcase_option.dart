import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [MyoroSingularDropdown] to choose an [IconData].
final class IconWidgetShowcaseOption extends StatelessWidget {
  /// [WidgetShowcaseOption.labelConfiguration]
  final WidgetShowcaseOptionLabelConfiguration? labelConfiguration;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<IconData> onChanged;

  const IconWidgetShowcaseOption({
    super.key,
    this.labelConfiguration,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return WidgetShowcaseOption(
      labelConfiguration:
          labelConfiguration ??
          const WidgetShowcaseOptionLabelConfiguration(label: 'Icon'),
      child: MyoroSingularDropdown<IconData>(
        configuration: MyoroSingularDropdownConfiguration(
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

  Set<IconData> _request() {
    return kMyoroTestIcons.toSet();
  }

  MyoroMenuItem _itemBuilder(IconData icon) {
    return MyoroMenuItem(
      textConfiguration: MyoroIconTextButtonTextConfiguration(
        text: _labelBuilder(icon),
      ),
    );
  }

  String _labelBuilder(IconData icon) {
    return icon.toString();
  }
}
