part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonConfiguration.onTapDown] option of [MyoroButtonWidgetShowcaseScreen].
final class _OnTapDownEnabledOption extends StatelessWidget {
  const _OnTapDownEnabledOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final onTapDownEnabled = state.onTapDownEnabled;
    return MyoroCheckbox(
      label: 'Tap down enabled?',
      value: onTapDownEnabled,
      onChanged: (value) => state.onTapDownEnabled = value,
    );
  }
}
