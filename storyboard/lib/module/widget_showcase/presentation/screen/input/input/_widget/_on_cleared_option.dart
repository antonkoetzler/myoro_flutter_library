part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.onCleared] option of [MyoroInputWidgetShowcaseScreen].
final class _OnClearedOption extends StatelessWidget {
  const _OnClearedOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Callback when clear text button is pressed?',
        onChanged: (value) => viewModel.state.onClearedEnabled = value,
      ),
    );
  }
}
