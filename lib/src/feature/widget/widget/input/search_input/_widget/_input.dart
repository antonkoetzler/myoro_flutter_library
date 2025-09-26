part of '../myoro_search_input.dart';

/// [MyoroInput] of the [MyoroSearchInput].
final class _Input<T> extends StatelessWidget {
  const _Input(this._itemsRequest);

  final MyoroRequest<Set<T>> _itemsRequest;

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSearchInputViewModel<T>>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final inputKey = state.inputKey;
    final searchInputController = state.inputController;
    final itemsRequestNotifier = state.itemsRequestNotifier;

    return MyoroInput(
      configuration: configuration.copyWith(
        controller: searchInputController,
        inputKey: inputKey,
        suffix: _SearchButton<T>(_itemsRequest),
        onChanged: configuration.requestWhenChanged ? (_) => itemsRequestNotifier.fetch() : null,
        onFieldSubmitted: (_) => itemsRequestNotifier.fetch(),
      ),
    );
  }
}
