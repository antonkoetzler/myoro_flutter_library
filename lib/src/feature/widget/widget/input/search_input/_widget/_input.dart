part of '../widget/myoro_search_input.dart';

/// Input [Widget] of [MyoroSearchInput].
final class _Input extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSearchInputViewModel>();
    final state = viewModel.state;
    final searchController = state.searchController;
    return MyoroInput(inputController: searchController, suffix: const _SearchButton());
  }
}
