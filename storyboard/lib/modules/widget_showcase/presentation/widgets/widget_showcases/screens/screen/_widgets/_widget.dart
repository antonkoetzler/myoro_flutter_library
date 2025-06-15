part of '../myoro_screen_widget_showcase.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroScreenWidgetShowcase].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroScreenWidgetShowcaseViewModel>();
    return MyoroScreen(configuration: viewModel.configuration(const _AppBar(), const _Body()));
  }
}
