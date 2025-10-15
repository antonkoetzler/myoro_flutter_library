part of '../myoro_input_widget_showcase_screen.dart';

/// [MyoroInputConfiguration.border] option of [MyoroInputWidgetShowcaseScreen].
final class _BorderOption extends StatelessWidget {
  const _BorderOption();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();

    return MyoroCheckbox(
      configuration: MyoroCheckboxConfiguration(
        label: 'Custom border enabled?',
        onChanged: (value) => viewModel.state.borderEnabled = value,
      ),
    );
  }
}
