part of '../myoro_selection_dropdowns_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroSelectionDropdownsWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: widgetShowcaseThemeExtension.spacing,
      children: const [
        _Title('MyoroSingleSelectionDropdown'),
        Flexible(child: _SingleDropdown()),
        _Title('MyoroMultiSelectionDropdown'),
        Flexible(child: _MultiDropdown()),
      ],
    );
  }
}
