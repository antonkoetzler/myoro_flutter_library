part of '../myoro_screen_widget_showcase_screen.dart';

/// [MyoroScreenConfiguration.endDrawerEnableOpenDragGesture] option of [MyoroScreenWidgetShowcaseScreen].
final class _EndDrawerEnableOpenDragGestureOption extends StatelessWidget {
  const _EndDrawerEnableOpenDragGestureOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroScreenWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Enable end drawer open drag gesture?',
        onChanged: (value) => viewModel.state.endDrawerEnableOpenDragGesture = value,
      ),
    );
  }
}
