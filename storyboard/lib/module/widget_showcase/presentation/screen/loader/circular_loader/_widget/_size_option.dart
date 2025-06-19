part of '../myoro_circular_loader_widget_showcase.dart';

/// [MyoroCircularLoaderConfiguration.size] option of [MyoroCircularLoaderWidgetShowcase].
final class _SizeOption extends StatelessWidget {
  const _SizeOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCircularLoaderWidgetShowcaseViewModel>();

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
