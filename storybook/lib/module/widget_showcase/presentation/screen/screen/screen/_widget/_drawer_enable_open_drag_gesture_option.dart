part of '../myoro_screen_widget_showcase_screen.dart';

/// [MyoroScreenConfiguration.drawerEnableOpenDragGesture] option of [MyoroScreenWidgetShowcaseScreen].
final class _DrawerEnableOpenDragGestureOption extends StatelessWidget {
  const _DrawerEnableOpenDragGestureOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScreenWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    return MyoroCheckbox(
      label: 'Enable drawer open drag gesture?',
      onChanged: (value) => state.drawerEnableOpenDragGesture = value,
    );
  }
}
