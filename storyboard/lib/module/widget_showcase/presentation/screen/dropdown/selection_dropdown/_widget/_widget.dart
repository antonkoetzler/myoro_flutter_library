part of '../myoro_selection_dropdowns_widget_showcase_screen.dart';

/// Widget of [MyoroSelectionDropdownsWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final spacing = themeExtension.spacing;

    return Column(
      spacing: spacing,
      mainAxisSize: MainAxisSize.min,
      children: const [
        Flexible(child: MyoroSingleSelectionDropdownV2()),
        Flexible(child: MyoroMultiSelectionDropdownV2()),
      ],
    );
  }
}
