part of '../myoro_carousel_widget_showcase_screen.dart';

/// [MyoroCarouselConfiguration.initialItem] option of [MyoroCarouselWidgetShowcaseScreen].
final class _InitialItemOption extends StatelessWidget {
  const _InitialItemOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCarouselWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Initial item',
        enabled: true,
        value: viewModel.state.initialItem.toDouble(),
        sliderOnChanged: (value) => viewModel.state.initialItem = value.toInt(),
      ),
    );
  }
}
