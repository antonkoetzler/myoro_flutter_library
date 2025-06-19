part of '../myoro_search_input.dart';

/// [MyoroInput] of the [MyoroSearchInput].
final class _Input<T> extends StatelessWidget {
  const _Input();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MyoroSearchInputViewModel>();
    final configuration = viewModel.configuration;
    final searchInputController = viewModel.inputController;
    final itemsRequestController = viewModel.itemsRequestController;

    return MyoroInput(
      configuration: configuration.inputConfiguration.copyWith(
        controller: searchInputController,
        suffix: const _SearchButton(),
        onChanged: configuration.requestWhenChanged ? (_) => itemsRequestController.fetch() : null,
        onFieldSubmitted: (_) => itemsRequestController.fetch(),
      ),
    );
  }
}
