import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Base accordion controller.
abstract class MyoroAccordionController<T, V extends MyoroAccordionViewModel<T>> {
  /// Default constructor.
  MyoroAccordionController(this._viewModel);

  /// View model.
  final V _viewModel;

  /// Dispose function.
  @mustCallSuper
  void dispose() => _viewModel.dispose();

  /// Toggles an item.
  void toggleItem(T item) => _viewModel.toggleItem(item);

  /// Resets the selected item(s).
  void reset() => _viewModel.reset();

  /// [_viewModel] getter.
  @protected
  V get viewModel => _viewModel;

  /// [MyoroAccordionConfiguration] getter.
  MyoroAccordionConfiguration<T> get configuration => _viewModel.state.configuration;
}
