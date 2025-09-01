import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroAccordion].
class MyoroAccordionController {
  MyoroAccordionController({required MyoroAccordionConfiguration configuration})
    : _viewModel = MyoroAccordionViewModel(configuration);

  /// View model.
  final MyoroAccordionViewModel _viewModel;

  /// Dispose function.
  void dispose() => _viewModel.dispose();

  /// Toggles a [MyoroAccordionItem].
  void toggleItem(MyoroAccordionItem item) => _viewModel.toggleItem(item);

  /// Resets the selected [MyoroAccordionItem].
  void reset() => _viewModel.state.selectedItem = null;

  /// View model getter.
  @protected
  MyoroAccordionViewModel get viewModel => _viewModel;

  /// [MyoroAccordionConfiguration] getter.
  MyoroAccordionConfiguration get configuration => _viewModel.state.configuration;

  /// Alias of [value].
  MyoroAccordionItem? get selectedItem => _viewModel.state.selectedItem;
}
