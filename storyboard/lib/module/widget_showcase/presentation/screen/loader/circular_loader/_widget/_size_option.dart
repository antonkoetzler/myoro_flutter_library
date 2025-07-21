part of '../myoro_circular_loader_widget_showcase_screen.dart';

/// [MyoroCircularLoaderConfiguration.size] option of [MyoroCircularLoaderWidgetShowcaseScreen].
final class _SizeOption extends StatelessWidget {
  const _SizeOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroCircularLoaderWidgetShowcaseScreenViewModel>();

    return SliderWidgetShowcaseOption(
      configuration: SliderWidgetShowcaseOptionConfiguration(
        label: 'Size',
        initiallyEnabled: viewModel.state.size != null,
        checkboxOnChanged: (enabled, size) => viewModel.state.size = enabled ? size : null,
        sliderOnChanged: (size) => viewModel.state.size = size,
      ),
    );
  }
}
