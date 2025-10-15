part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.onFieldSubmitted] option of [MyoroInputWidgetShowcaseScreen].
final class _OnFieldSubmittedOption extends StatelessWidget {
  const _OnFieldSubmittedOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Callback when enter is pressed?',
        onChanged: (value) => viewModel.state.onFieldSubmittedEnabled = value,
      ),
    );
  }
}
