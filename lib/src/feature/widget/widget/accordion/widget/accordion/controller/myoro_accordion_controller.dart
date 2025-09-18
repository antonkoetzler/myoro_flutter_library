import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Base accordion controller.
abstract class MyoroAccordionController {
  MyoroAccordionController({
    required MyoroAccordionConfiguration configuration,
    Set<MyoroAccordionItem> selectedItems = const {},
  }) : _viewModel = MyoroAccordionViewModel(configuration, selectedItems);

  /// View model.
  final MyoroAccordionViewModel _viewModel;

  /// Dispose function.
  void dispose() => _viewModel.dispose();

  /// Toggles a [MyoroAccordionItem].
  void toggleItem(MyoroAccordionItem item) => _viewModel.toggleItem(item);

  /// Resets the selected [MyoroAccordionItem].
  void reset() => _viewModel.reset();

  /// [_viewModel] getter.
  @protected
  MyoroAccordionViewModel get viewModel => _viewModel;

  /// [MyoroAccordionConfiguration] getter.
  MyoroAccordionConfiguration get configuration => _viewModel.state.configuration;

  /// Alias of [value].
  Set<MyoroAccordionItem> get selectedItems => _viewModel.state.selectedItems;
}
