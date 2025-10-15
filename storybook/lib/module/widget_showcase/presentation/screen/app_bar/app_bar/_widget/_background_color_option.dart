part of '../myoro_app_bar_widget_showcase_screen.dart';

/// [MyoroAppBarConfiguration.backgroundColor] option.
final class _BackgroundColorOption extends StatelessWidget {
  const _BackgroundColorOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroAppBarWidgetShowcaseScreenViewModel>();
    return ColorWidgetShowcaseOption(onChanged: (color) => viewModel.state.backgroundColor = color);
  }
}
