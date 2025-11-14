part of '../icon_widget_showcase_option.dart';

/// [MyoroSingleSelectionDropdown] that selects the [IconData] in [IconWidgetShowcaseOption].
final class _IconDropdown extends StatelessWidget {
  const _IconDropdown();

  String _getIconName(IconData icon) {
    // Since IconData doesn't have a name property, we'll use a simple approach
    // by checking against known icons and returning their names
    if (icon == Icons.abc) return 'ABC';
    if (icon == Icons.ac_unit) return 'AC Unit';
    if (icon == Icons.access_alarm) return 'Access Alarm';
    if (icon == Icons.access_time) return 'Access Time';
    if (icon == Icons.accessibility) return 'Accessibility';
    if (icon == Icons.bolt) return 'Bolt';
    if (icon == Icons.block) return 'Block';
    if (icon == Icons.crop_free) return 'Crop Free';
    if (icon == Icons.adb_sharp) return 'ADB Sharp';
    if (icon == Icons.youtube_searched_for) return 'YouTube Searched';
    return localization.storybookWidgetShowcaseOptionIconUnknownIconLabel;
  }

  @override
  Widget build(context) {
    final viewModel = context.read<IconWidgetShowcaseOptionViewModel>();
    final configuration = viewModel.configuration;

    return MyoroSingleSelectionDropdown<IconData>(
      label: localization.storybookWidgetShowcaseOptionIconLabel,
      enabled: configuration.enabled ?? true,
      selectedItem: configuration.selectedIcon,
      onChanged: configuration.iconOnChanged,
      selectedItemBuilder: _getIconName,
      itemBuilder: (icon, _) {
        return MyoroMenuIconTextButtonItem(text: _getIconName(icon));
      },
      items: kMyoroTestIcons.toSet(),
    );
  }
}
