part of '../myoro_input_widget_showcase.dart';

/// [MyoroInputConfiguration.onFieldSubmitted] option of [MyoroInputWidgetShowcase].
final class _OnFieldSubmittedOption extends StatelessWidget {
  const _OnFieldSubmittedOption();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Callback when enter is pressed?',
        onChanged: (value) => viewModel.state.onFieldSubmittedEnabled = value,
      ),
    );
  }
}
