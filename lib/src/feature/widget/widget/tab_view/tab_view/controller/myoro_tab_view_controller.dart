import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of a [MyoroTabView].
final class MyoroTabViewController {
  MyoroTabViewController({required MyoroTabViewConfiguration configuration})
    : _viewModel = MyoroTabViewViewModel(configuration);

  /// View model.
  final MyoroTabViewViewModel _viewModel;

  /// Getter of [_viewModel].
  @protected
  MyoroTabViewViewModel get viewModel => _viewModel;

  /// Getter of the [MyoroTabViewConfiguration] of the [MyoroTabViewController].
  MyoroTabViewConfiguration get configuration => _viewModel.state.configuration;

  /// [ValueNotifier] of the selected [MyoroTabViewTab].
  ValueNotifier<MyoroTabViewTab> get selectedTabNotifier => _viewModel.state.selectedTabNotifier;

  /// The currently selected [MyoroTabViewTab].
  MyoroTabViewTab get selectedTab => _viewModel.state.selectedTab;

  /// Changes the selected tab index.
  void selectTab(MyoroTabViewTab tab) => _viewModel.selectTab(tab);

  /// Dispose function.
  void dispose() => _viewModel.dispose();
}
