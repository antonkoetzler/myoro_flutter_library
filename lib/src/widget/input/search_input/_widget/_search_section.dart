part of '../myoro_search_input.dart';

/// [MyoroMenu] displaying the search results.
final class _SearchSection<T> extends StatelessWidget {
  const _SearchSection();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSearchInputViewModel>();
    final itemBuilder = viewModel.configuration.itemBuilder;
    final items = viewModel.itemsRequest.data;

    return MyoroMenu(configuration: MyoroMenuConfiguration(itemBuilder: itemBuilder, request: () => items!));
  }
}
