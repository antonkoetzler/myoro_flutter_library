part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonConfiguration.onTapUp] option of [MyoroButtonWidgetShowcaseScreen].
final class _OnTapUpEnabledOption extends StatelessWidget {
  const _OnTapUpEnabledOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final onTapUpEnabled = state.onTapUpEnabled;
    return MyoroCheckbox(
      label: 'Tap up enabled?',
      value: onTapUpEnabled,
      onChanged: (value) => state.onTapUpEnabled = value,
    );
  }
}
