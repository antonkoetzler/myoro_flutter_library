part of '../myoro_circular_loader_widget_showcase_screen.dart';

/// [MyoroCircularLoaderConfiguration.color] option of [MyoroCircularLoaderWidgetShowcaseScreen].
final class _ColorOption extends StatelessWidget {
  const _ColorOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroCircularLoaderWidgetShowcaseScreenViewModel>();
    return ColorWidgetShowcaseOption(onChanged: (color) => viewModel.state.color = color);
  }
}
