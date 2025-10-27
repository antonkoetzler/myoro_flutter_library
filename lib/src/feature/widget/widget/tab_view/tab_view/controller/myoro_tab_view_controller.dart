import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of a [MyoroTabView].
final class MyoroTabViewController {
  MyoroTabViewController({required int initiallySelectedTabIndex, required List<MyoroTabViewTab> tabs})
    : _viewModel = MyoroTabViewViewModel(initiallySelectedTabIndex: initiallySelectedTabIndex, tabs: tabs);

  /// View model.
  final MyoroTabViewViewModel _viewModel;

  /// Getter of [_viewModel].
  @protected
  MyoroTabViewViewModel get viewModel => _viewModel;

  /// [ValueNotifier] of the selected [MyoroTabViewTab].
  ValueNotifier<MyoroTabViewTab> get selectedTabNotifier => _viewModel.state.selectedTabNotifier;

  /// The currently selected [MyoroTabViewTab].
  MyoroTabViewTab get selectedTab => _viewModel.state.selectedTab;

  /// Changes the selected tab index.
  void selectTab(MyoroTabViewTab tab) => _viewModel.selectTab(tab);

  /// Dispose function.
  void dispose() => _viewModel.dispose();
}
