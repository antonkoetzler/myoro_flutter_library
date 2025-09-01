part of '../myoro_time_picker_input.dart';

/// [MyoroInput] of the [MyoroTimePickerInput].
final class _Input extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTimePickerInputViewModel>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final inputKey = state.inputKey;
    final inputController = state.inputController;
    viewModel.getInputSize();
    return MyoroInput(
      configuration: configuration.copyWith(inputKey: inputKey, controller: inputController),
    );
  }
}
