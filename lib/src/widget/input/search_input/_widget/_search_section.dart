part of '../myoro_search_input.dart';

/// [MyoroMenu] displaying the search results.
final class _SearchSection<T> extends StatelessWidget {
  final MyoroSearchInputController<T> _controller;

  const _SearchSection(this._controller);

  @override
  Widget build(BuildContext context) {
    final itemBuilder = _controller.configuration.itemBuilder;
    final items = _controller.itemsRequest.data;

    return MyoroMenu(configuration: MyoroMenuConfiguration(itemBuilder: itemBuilder, request: () => items!));
  }
}
