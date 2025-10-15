part of '../myoro_screen_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroScreenWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScreenWidgetShowcaseScreenViewModel>();
    return MyoroScreen(configuration: viewModel.buildConfiguration(const _AppBar(), const _Body()));
  }
}
