part of '../myoro_menus_widget_showcase_screen.dart';

/// [MyoroMenuThemeExtension.itemBorderRadius] option of [MyoroMenusWidgetShowcaseScreen].
final class _ItemBorderRadiusOption extends StatelessWidget {
  const _ItemBorderRadiusOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenusWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Item border radius',
        enabled: viewModel.state.itemBorderRadius != null,
        value: viewModel.state.itemBorderRadius?.topLeft.x ?? 0.0,
        sliderOnChanged: (value) => viewModel.state.itemBorderRadius = BorderRadius.circular(value),
        checkboxOnChanged: (enabled, value) =>
            viewModel.state.itemBorderRadius = enabled ? BorderRadius.circular(value) : null,
      ),
    );
  }
}
