part of '../myoro_button_widget_showcase_screen.dart';

/// [MyoroButtonConfiguration.onTapDown] option of [MyoroButtonWidgetShowcaseScreen].
final class _OnTapDownEnabledOption extends StatelessWidget {
  const _OnTapDownEnabledOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroButtonWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Tap down enabled?',
        value: viewModel.state.onTapDownEnabled,
        onChanged: (value) => viewModel.state.onTapDownEnabled = value,
      ),
    );
  }
}
