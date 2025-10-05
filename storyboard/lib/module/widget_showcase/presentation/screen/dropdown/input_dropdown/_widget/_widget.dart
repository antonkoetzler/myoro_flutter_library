part of '../myoro_input_dropdowns_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroInputDropdownsWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final widgetShowcaseThemeExtension = context.resolveThemeExtension<WidgetShowcaseThemeExtension>();
    final spacing = widgetShowcaseThemeExtension.spacing;

    final viewModel = context.read<MyoroInputDropdownsWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;

    return ListenableBuilder(
      listenable: state,
      builder: (_, _) {
        return Column(
          spacing: spacing,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(child: MyoroSingleInputDropdown(configuration: viewModel.singleConfiguration)),
            Flexible(child: MyoroMultiInputDropdown(configuration: viewModel.multiConfiguration)),
          ],
        );
      },
    );
  }
}
