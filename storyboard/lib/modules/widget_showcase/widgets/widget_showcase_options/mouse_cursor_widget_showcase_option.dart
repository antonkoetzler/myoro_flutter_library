import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [MyoroSingularDropdown] to pick from a selection of [SystemMouseCursor].
///
/// TODO: Needs to be tested.
final class MouseCursorWidgetShowcaseOption extends StatelessWidget {
  /// [WidgetShowcaseOption.labelConfiguration]
  final WidgetShowcaseOptionLabelConfiguration? labelConfiguration;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<SystemMouseCursor>
  onChanged;

  const MouseCursorWidgetShowcaseOption({
    super.key,
    this.labelConfiguration,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return WidgetShowcaseOption(
      labelConfiguration:
          labelConfiguration ??
          const WidgetShowcaseOptionLabelConfiguration(label: 'Mouse cursor'),
      child: MyoroSingularDropdown<SystemMouseCursor>(
        configuration: MyoroSingularDropdownConfiguration(
          menuConfiguration: MyoroMenuConfiguration(
            request: _request,
            itemBuilder: _itemBuilder,
          ),
          selectedItemBuilder: _selectedItemBuilder,
          onChanged: onChanged,
        ),
      ),
    );
  }

  Set<SystemMouseCursor> _request() {
    return kMyoroTestCursors.toSet();
  }

  MyoroMenuItem _itemBuilder(SystemMouseCursor cursor) {
    return MyoroMenuItem(
      textConfiguration: MyoroIconTextButtonTextConfiguration(
        text: cursor.toString(),
      ),
    );
  }

  String _selectedItemBuilder(SystemMouseCursor cursor) {
    return cursor.toString();
  }
}
