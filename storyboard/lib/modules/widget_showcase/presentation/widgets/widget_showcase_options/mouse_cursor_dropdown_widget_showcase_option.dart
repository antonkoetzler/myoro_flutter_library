import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [MouseCursor] [MyoroSingularDropdown] [WidgetShowcase] option.
final class MouseCursorDropdownWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Mouse cursor';

  const MouseCursorDropdownWidgetShowcaseOption({super.key, this.label = labelDefaultValue, required this.onChanged});

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
            return MyoroMenuItem(textConfiguration: MyoroIconTextButtonTextConfiguration(text: _getCursorName(cursor)));
          },
        ),
      ),
    );
  }

  String _getCursorName(MouseCursor cursor) {
    return cursor.runtimeType.toString();
  }
}
