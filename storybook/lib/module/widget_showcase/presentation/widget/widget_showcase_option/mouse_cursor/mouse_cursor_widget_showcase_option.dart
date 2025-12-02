import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/l10n/localization.dart';

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
      itemBuilder: (_, cursor) {
        return MyoroMenuIconTextButtonItem(text: _getCursorName(cursor));
      },
      items: kMyoroTestCursors.toSet(),
      selectedItem: selectedCursor,
    );
  }

  String _getCursorName(MouseCursor cursor) {
    if (cursor == SystemMouseCursors.basic) return localization.storybookWidgetShowcaseOptionMouseCursorBasicLabel;
    if (cursor == SystemMouseCursors.click) return localization.storybookWidgetShowcaseOptionMouseCursorClickLabel;
    if (cursor == SystemMouseCursors.help) return localization.storybookWidgetShowcaseOptionMouseCursorHelpLabel;
    if (cursor == SystemMouseCursors.resizeRow) return 'Resize (Row)';
    if (cursor == SystemMouseCursors.resizeColumn) return 'Resize (Column)';
    if (cursor == SystemMouseCursors.zoomIn) return localization.storybookWidgetShowcaseOptionMouseCursorZoomInLabel;
    if (cursor == SystemMouseCursors.zoomOut) return localization.storybookWidgetShowcaseOptionMouseCursorZoomOutLabel;
    throw AssertionError('[MouseCursorWidgetShowcaseOption._getCursorName]: Unknown [SystemMouseCursors].');
  }
}
