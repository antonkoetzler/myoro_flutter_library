part of '../myoro_date_picker_input.dart';

/// [MyoroInput] of the [MyoroDatePickerInput].
final class _Input extends StatelessWidget {
  const _Input();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroDatePickerInputViewModel>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final inputKey = state.inputKey;
    final inputController = state.inputController;
    viewModel.getInputSize();
    return MyoroInput(configuration: configuration.copyWith(inputKey: inputKey, controller: inputController));
  }
}
