part of '../myoro_dropdown_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroDropdownWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: widgetShowcaseThemeExtension.spacing,
      children: const [
        _Title('MyoroSingularDropdown'),
        Flexible(child: _SingularDropdown()),
        _Title('MyoroMultiDropdown'),
        Flexible(child: _MultiDropdown()),
      ],
    );
  }
}
