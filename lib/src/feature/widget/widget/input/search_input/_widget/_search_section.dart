part of '../myoro_search_input.dart';

/// [MyoroSingleMenu] displaying the search results.
final class _SearchSection<T> extends StatelessWidget {
  const _SearchSection();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroSearchInputViewModel<T>>();
    final state = viewModel.state;
    final configuration = state.configuration;
    final itemBuilder = configuration.itemBuilder;
    final items = state.itemsRequest.data;

    return MyoroSingleMenu<T>(
      configuration: MyoroSingleMenuConfiguration(itemBuilder: itemBuilder, request: () => items ?? const {}),
    );
  }
}
