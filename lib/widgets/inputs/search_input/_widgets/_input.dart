part of '../myoro_search_input.dart';

/// [MyoroInput] of the [MyoroSearchInput].
final class _Input<T> extends StatelessWidget {
  final MyoroSearchInputController<T> _controller;

  const _Input(this._controller);

  @override
  Widget build(_) {
    final state = _controller.state;
    final configuration = state.configuration;
    final searchInputController = state.inputController;
    final itemsRequestController = state.itemsRequestController;

    return MyoroInput(
      configuration: configuration.inputConfiguration.copyWith(
        controller: searchInputController,
        suffix: _SearchButton(_controller),
        onChanged: configuration.requestWhenChanged ? (_) => itemsRequestController.fetch() : null,
        onFieldSubmitted: (_) => itemsRequestController.fetch(),
      ),
    );
  }
}
