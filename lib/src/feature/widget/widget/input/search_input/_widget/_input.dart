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
    final inputKey = state.inputKey;
    final requestController = state.requestController;
    final fetch = requestController.fetch;

    final themeExtension = context.resolveThemeExtension<MyoroSearchInputThemeExtension>();
    final style = context.read<MyoroSearchInputStyle>();
    final searchButtonIconConfiguration =
        style.searchButtonIconConfiguration ?? themeExtension.searchButtonIconConfiguration;

    return MyoroInput(
      inputKey: inputKey,
      controller: inputController,
      label: label,
      onFieldSubmitted: (_) => fetch(),
      suffix: searchButtonIconConfiguration != null ? _SearchButton<T>() : null,
    );
  }
}
