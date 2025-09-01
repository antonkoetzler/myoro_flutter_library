import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroTable].
class MyoroTableController<T> {
  MyoroTableController({required MyoroTableConfiguration<T> configuration, MyoroTableViewModel<T>? viewModel})
    : _viewModel = viewModel ?? MyoroTableViewModel(configuration);

  /// View model.
  final MyoroTableViewModel<T> _viewModel;

  /// [_viewModel] getter.
  @protected
  MyoroTableViewModel<T> get viewModel => _viewModel;

  /// [_viewModel]'s [MyoroTableViewModel.state] getter.
  MyoroTableState<T> get _state => viewModel.state;

  /// [MyoroTableState.itemsRequestController] getter.
  MyoroRequest<Set<T>> get itemsRequest => _viewModel.state.itemsRequest;

  /// Dispose function.
  void dispose() {
    _state.itemsRequestNotifier.dispose();
    _state.titleColumnKeyWidthsNotifier.dispose();
  }

  /// Fetches the items of the [MyoroTable].
  void fetch() {
    _state.itemsRequestNotifier.fetch();
  }
}
