import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Base accordion controller.
abstract class MyoroAccordionController<T> {
  MyoroAccordionController({required MyoroAccordionConfiguration<T> configuration, Set<T> selectedItems = const {}})
    : _viewModel = MyoroAccordionViewModel(configuration, selectedItems);

  /// View model.
  final MyoroAccordionViewModel<T> _viewModel;

  /// Dispose function.
  void dispose() => _viewModel.dispose();

  /// Toggles an item.
  void toggleItem(T item) => _viewModel.toggleItem(item);

  /// Resets the selected item(s).
  void reset() => _viewModel.reset();

  /// [_viewModel] getter.
  @protected
  MyoroAccordionViewModel<T> get viewModel => _viewModel;

  /// [MyoroAccordionConfiguration] getter.
  MyoroAccordionConfiguration<T> get configuration => _viewModel.state.configuration;
}
