import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [MyoroSingularDropdown] to choose a [ThemeMode].
final class ThemeModeWidgetShowcaseOption extends StatelessWidget {
  static const labelDefaultValue = 'ThemeMode';

  const ThemeModeWidgetShowcaseOption({super.key, this.label = labelDefaultValue, required this.onChanged});

  /// [MyoroDropdownConfiguration.label]
  final String label;

  /// [MyoroSingularDropdownConfiguration.onChanged]
  final MyoroSingularDropdownConfigurationOnChanged<ThemeMode> onChanged;

  @override
  Widget build(_) {
    final themeModeController = KiwiContainer().resolve<ThemeModeController>();

    return MyoroSingularDropdown<ThemeMode>(
      configuration: MyoroSingularDropdownConfiguration(
        label: label,
        allowItemClearing: false,
        menuConfiguration: MyoroSingularMenuConfiguration(
          request: ThemeMode.values.toSet,
          selectedItem: themeModeController.themeMode,
          itemBuilder: (themeMode) {
            return MyoroMenuItem(
              iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
                textConfiguration: MyoroTextConfiguration(text: _formattedName(themeMode)),
              ),
            );
          },
        ),
        selectedItemBuilder: _formattedName,
        onChanged: onChanged,
      ),
    );
  }

  String _formattedName(ThemeMode themeMode) {
    final name = themeMode.name;
    return '${name[0].toUpperCase()}${name.substring(1)}';
  }
}
