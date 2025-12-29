part of '../myoro_table.dart';

/// Area of a [MyoroTable] where the rows and dialogs are displayed.
final class _RowsSection<T> extends StatelessWidget {
  const _RowsSection();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroTableViewModel<T>>();
    final state = viewModel.state;
    final itemsRequestController = state.itemsRequestController;

    return ValueListenableBuilder(
      valueListenable: itemsRequestController,
      builder: (_, MyoroRequest<Set<T>> itemsRequest, _) {
        return switch (itemsRequest.status) {
          MyoroRequestEnum.idle => const _Loader(),
          MyoroRequestEnum.loading => const _Loader(),
          MyoroRequestEnum.success => _Rows(itemsRequest.data!),
          MyoroRequestEnum.error => _ErrorMessage(itemsRequest.error!),
        };
      },
    );
  }
}
