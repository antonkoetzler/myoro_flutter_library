part of '../myoro_date_picker_input.dart';

/// [MyoroInput] of the [MyoroDatePickerInput].
final class _Input extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroDatePickerInputViewModel>();
    final state = viewModel.state;
    final inputController = state.inputController;
    final onTap = viewModel.onTap;
    return MyoroInput(controller: inputController, onTap: () => onTap(context, (child) => _DatePicker(child!)));
  }
}
