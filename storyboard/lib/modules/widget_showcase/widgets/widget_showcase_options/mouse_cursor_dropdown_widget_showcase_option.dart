import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroSingularDropdown] to pick from a selection of [SystemMouseCursor].
///
/// TODO: Needs to be tested.
final class MouseCursorDropdownWidgetShowcaseOption extends StatelessWidget {
  /// [MyoroSingularDropdownConfiguration.label].
  final String? label;

  /// [MyoroSingularDropdownConfiguration.onChanged].
  final MyoroSingularDropdownConfigurationOnChanged<SystemMouseCursor> onChanged;

  const MouseCursorDropdownWidgetShowcaseOption({super.key, this.label, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return MyoroSingularDropdown<SystemMouseCursor>(
      configuration: MyoroSingularDropdownConfiguration(
        label: label ?? 'Mouse cursor',
        menuConfiguration: MyoroMenuConfiguration(request: _request, itemBuilder: _itemBuilder),
        selectedItemBuilder: _selectedItemBuilder,
        onChanged: onChanged,
      ),
    );
  }

  Set<SystemMouseCursor> _request() {
    return kMyoroTestCursors.toSet();
  }

  MyoroMenuItem _itemBuilder(SystemMouseCursor cursor) {
    return MyoroMenuItem(
      textConfiguration: MyoroIconTextButtonTextConfiguration(text: cursor.toString()),
    );
  }

  String _selectedItemBuilder(SystemMouseCursor cursor) {
    return cursor.toString();
  }
}
