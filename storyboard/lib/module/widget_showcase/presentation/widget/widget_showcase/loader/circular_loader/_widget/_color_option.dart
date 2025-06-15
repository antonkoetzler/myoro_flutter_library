part of '../myoro_circular_loader_widget_showcase.dart';

/// [MyoroCircularLoaderConfiguration.color] option of [MyoroCircularLoaderWidgetShowcase].
final class _ColorOption extends StatelessWidget {
  const _ColorOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCircularLoaderWidgetShowcaseViewModel>();
    return ColorDropdownWidgetShowcaseOption(onChanged: (color) => viewModel.state.color = color);
  }
}
