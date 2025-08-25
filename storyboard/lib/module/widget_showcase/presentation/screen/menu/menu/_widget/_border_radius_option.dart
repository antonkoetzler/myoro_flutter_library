part of '../myoro_menus_widget_showcase_screen.dart';

/// [MyoroMenuConfiguration.borderRadius] option of [MyoroMenusWidgetShowcaseScreen].
final class _BorderRadiusOption extends StatelessWidget {
  const _BorderRadiusOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroMenusWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Border radius',
        sliderOnChanged: (borderRadius) => state.borderRadius = borderRadius,
      ),
    );
  }
}
