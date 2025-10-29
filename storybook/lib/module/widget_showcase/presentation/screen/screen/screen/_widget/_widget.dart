part of '../myoro_screen_widget_showcase_screen.dart';

/// [WidgetShowcaseScreenConfiguration.widget] of [MyoroScreenWidgetShowcaseScreen].
final class _Widget extends StatelessWidget {
  const _Widget();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScreenWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroScreen(
      appBar: state.appBarEnabled ? const _AppBar() : null,
      drawerEnableOpenDragGesture: state.drawerEnableOpenDragGesture,
      endDrawerEnableOpenDragGesture: state.endDrawerEnableOpenDragGesture,
      body: const _Body(),
    );
  }
}
