part of '../myoro_search_input.dart';

/// [MyoroInput] of the [MyoroSearchInput].
final class _Input<T> extends StatelessWidget {
  const _Input(this._itemsRequest);

  final MyoroRequest<Set<T>> _itemsRequest;

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSearchInputViewModel<T>>();
    final configuration = viewModel.configuration;
    final searchInputController = viewModel.inputController;
    final itemsRequestController = viewModel.itemsRequestNotifier;

    return MyoroInput(
      configuration: configuration.copyWith(
        controller: searchInputController,
        suffix: _SearchButton<T>(_itemsRequest),
        onChanged: configuration.requestWhenChanged ? (_) => itemsRequestController.fetch() : null,
        onFieldSubmitted: (_) => itemsRequestController.fetch(),
      ),
    );
  }
}
