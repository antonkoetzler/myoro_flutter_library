part of '../myoro_dropdowns_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroDropdownsWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: widgetShowcaseThemeExtension.spacing,
      children: const [
        _Title('MyoroSingleDropdown'),
        Flexible(child: _SingleDropdown()),
        _Title('MyoroMultiDropdown'),
        Flexible(child: _MultiDropdown()),
      ],
    );
  }
}
