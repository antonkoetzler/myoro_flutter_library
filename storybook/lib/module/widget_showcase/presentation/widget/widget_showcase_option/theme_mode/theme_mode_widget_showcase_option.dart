import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// [MyoroSingleSelectionDropdown] to choose a [ThemeMode].
final class ThemeModeWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'ThemeMode';

  const ThemeModeWidgetShowcaseOption({super.key, this.label = labelDefaultValue, required this.onChanged});

  /// [MyoroSelectionDropdownConfiguration.label]
  final String label;

  /// [MyoroSingleSelectionDropdownConfiguration.onChanged]
  final void Function(ThemeMode?) onChanged;

  @override
  Widget build(_) {
    final themeModeController = KiwiContainer().resolve<ThemeModeController>();

    return MyoroSingleSelectionDropdown<ThemeMode>(
      label: label,
      onChanged: onChanged,
      itemBuilder: (themeMode) {
        return MyoroMenuIconTextButtonItem(textConfiguration: MyoroTextConfiguration(text: _formattedName(themeMode)));
      },
      items: ThemeMode.values.toSet(),
      selectedItem: themeModeController.themeMode,
      selectedItemBuilder: _formattedName,
    );
  }

  String _formattedName(ThemeMode themeMode) {
    final name = themeMode.name;
    return '${name[0].toUpperCase()}${name.substring(1)}';
  }
}
