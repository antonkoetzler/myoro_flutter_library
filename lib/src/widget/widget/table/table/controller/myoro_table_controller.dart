import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroTable].
class MyoroTableController<T> {
  MyoroTableController({required MyoroTableConfiguration<T> configuration})
    : _viewModel = MyoroTableViewModel(configuration);

  /// View model.
  MyoroTableViewModel<T>? _viewModel;

  /// [_viewModel] getter.
  @protected
  MyoroTableViewModel<T> get viewModel {
    assert(_viewModel != null, '[MyoroTableViewModel<T>.viewModel]: [_viewModel] has not been initialized yet.');
    return _viewModel!;
  }

  /// [_viewModel]'s [MyoroTableViewModel.state] getter.
  MyoroTableState<T> get _state => viewModel.state;

  /// [_viewModel]'s [MyoroTableState.itemsRequestController] getter.
  MyoroRequestController<Set<T>> get itemsRequestController => _state.itemsRequestController;

  /// [_viewModel] setter.
  set viewModel(MyoroTableViewModel<T> viewModel) {
    if (_viewModel == viewModel) return;
    _viewModel = viewModel;
  }

  /// Dispose function.
  void dispose() {
    _state.itemsRequestController.dispose();
    _state.titleColumnKeyWidthsController.dispose();
  }

  /// Fetches the items of the [MyoroTable].
  void fetch() {
    _state.itemsRequestController.fetch();
  }
}
