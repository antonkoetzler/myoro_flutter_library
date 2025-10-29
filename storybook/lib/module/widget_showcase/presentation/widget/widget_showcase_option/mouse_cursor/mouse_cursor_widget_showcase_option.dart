import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Widget showcase option for a [MyoroSingleSelectionDropdown]'s [MouseCursor].
final class MouseCursorWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'Mouse cursor';

  const MouseCursorWidgetShowcaseOption({
    super.key,
    this.label = labelDefaultValue,
    this.selectedCursor,
    required this.onChanged,
  });

  /// [MyoroSingleSelectionDropdownConfiguration.label]
  final String label;

  /// Initially selected [MouseCursor].
  final MouseCursor? selectedCursor;

  /// [MyoroSingleSelectionDropdownConfiguration.onChanged]
  final void Function(MouseCursor?) onChanged;

  @override
  Widget build(_) {
    return MyoroSingleSelectionDropdown<MouseCursor>(
      label: label,
      selectedItemBuilder: _getCursorName,
      onChanged: onChanged,
      itemBuilder: (cursor) {
        return MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: _getCursorName(cursor)));
      },
      items: kMyoroTestCursors.toSet(),
      selectedItem: selectedCursor,
    );
  }

  String _getCursorName(MouseCursor cursor) {
    if (cursor == SystemMouseCursors.basic) return 'Basic';
    if (cursor == SystemMouseCursors.click) return 'Click';
    if (cursor == SystemMouseCursors.help) return 'Help';
    if (cursor == SystemMouseCursors.resizeRow) return 'Resize (Row)';
    if (cursor == SystemMouseCursors.resizeColumn) return 'Resize (Column)';
    if (cursor == SystemMouseCursors.zoomIn) return 'Zoom In';
    if (cursor == SystemMouseCursors.zoomOut) return 'Zoom Out';
    throw AssertionError('[MouseCursorWidgetShowcaseOption._getCursorName]: Unknown [SystemMouseCursors].');
  }
}
