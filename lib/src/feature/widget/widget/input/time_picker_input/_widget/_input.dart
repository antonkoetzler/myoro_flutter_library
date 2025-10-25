part of '../myoro_time_picker_input.dart';

/// [MyoroInput] of the [MyoroTimePickerInput].
final class _Input extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTimePickerInputViewModel>();
    final style = context.watch<MyoroInputStyle>();
    final onTap = viewModel.openTimePicker;
    final state = viewModel.state;
    final inputController = state.inputController;
    return MyoroInput(
      inputController: inputController,
      onTap: () => onTap(context, (child) => _TimePicker(child!)),
      style: style,
    );
  }
}
