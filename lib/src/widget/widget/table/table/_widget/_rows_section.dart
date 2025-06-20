part of '../myoro_table.dart';

/// Area of a [MyoroTable] where the rows and dialogs are displayed.
final class _RowsSection<T> extends StatelessWidget {
  final MyoroTableController<T> _controller;
  MyoroRequestController<Set<T>> get _itemsRequestController => _controller.itemsRequestController;
  MyoroRequest<Set<T>> get _itemsRequest => _controller.itemsRequest;

  const _RowsSection(this._controller);

  @override
  Widget build(_) {
    // return BlocBuilder<MyoroTableBloc<T>, MyoroTableState<T>>(buildWhen: _buildWhen, builder: _builder);
    return ValueListenableBuilder(valueListenable: _itemsRequestController, builder: (_, _, _) => _builder());
  }

  Widget _builder() {
    return switch (_itemsRequest.status) {
      MyoroRequestEnum.idle => const _Loader(),
      MyoroRequestEnum.loading => const _Loader(),
      MyoroRequestEnum.success => _Rows(_controller),
      MyoroRequestEnum.error => _ErrorMessage(_itemsRequest.errorMessage!),
    };
  }
}
