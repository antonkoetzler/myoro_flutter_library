part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// [MyoroInput] of the selection dropdown.
class _Input<T> extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSelectionDropdownViewModel<T>>();
    final state = viewModel.state;
    final inputKey = state.inputKey;
    return MyoroInput(inputKey: inputKey, inputController: state.inputController);
  }
}
