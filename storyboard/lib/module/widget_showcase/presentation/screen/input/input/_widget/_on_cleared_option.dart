part of '../myoro_input_widget_showcase.dart';

/// [MyoroInputConfiguration.onCleared] option of [MyoroInputWidgetShowcase].
final class _OnClearedOption extends StatelessWidget {
  const _OnClearedOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Callback when clear text button is pressed?',
        onChanged: (value) => viewModel.state.onClearedEnabled = value,
      ),
    );
  }
}
