part of '../myoro_dropdown_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroDropdownWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final widgetShowcaseOptionThemeExtension = context.resolveThemeExtension<WidgetShowcaseOptionThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: widgetShowcaseOptionThemeExtension.spacing,
      children: const [
        _Title('MyoroSingularDropdown'),
        Flexible(child: _SingularDropdown()),
        _Title('MyoroMultiDropdown'),
        Flexible(child: _MultiDropdown()),
      ],
    );
  }
}
