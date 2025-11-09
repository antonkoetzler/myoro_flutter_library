part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// [MyoroInput] of the selection dropdown.
class _Input<T> extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSelectionDropdownViewModel<T>>();
    final state = viewModel.state;
    final inputKey = state.inputKey;
    final enabled = state.enabled;
    final label = state.label;
    final onTap = viewModel.onTap;
    final canShowClearTextButton = switch (state) {
      MyoroMultiSelectionDropdownState<T>() => true,
      MyoroSingleSelectionDropdownState<T>() => state.allowDeselection,
    };
    return MyoroInput(
      label: label,
      inputKey: inputKey,
      controller: state.inputController,
      enabled: enabled,
      enableInteractiveSelection: false,
      readOnly: true,
      onTap: onTap,
      canShowClearTextButton: canShowClearTextButton,
    );
  }
}
