part of '../widget/myoro_search_input.dart';

/// Input [Widget] of [MyoroSearchInput].
final class _Input<T> extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSearchInputViewModel<T>>();
    final state = viewModel.state;
    final label = state.label;
    final inputController = state.inputController;
    return MyoroInput(controller: inputController, label: label, suffix: const _SearchButton());
  }
}
