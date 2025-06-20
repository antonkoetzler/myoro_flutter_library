import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option for a [MyoroSingularDropdown]'s [MouseCursor].
final class MouseCursorWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Mouse cursor';

  const MouseCursorWidgetShowcaseOption({super.key, this.label = labelDefaultValue, required this.onChanged});

  /// [MyoroSingularDropdownConfiguration.label]
  final String label;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<MouseCursor> onChanged;

  @override
  Widget build(_) {
    return MyoroSingularDropdown(
      configuration: MyoroSingularDropdownConfiguration(
        label: label,
        selectedItemBuilder: _getCursorName,
        onChanged: onChanged,
        menuConfiguration: MyoroMenuConfiguration(
          request: kMyoroTestCursors.toSet,
          itemBuilder: (cursor) {
            return MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: _getCursorName(cursor)));
          },
        ),
      ),
    );
  }

  String _getCursorName(MouseCursor cursor) {
    return cursor.runtimeType.toString();
  }
}
