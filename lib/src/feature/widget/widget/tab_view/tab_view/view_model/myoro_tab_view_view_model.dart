import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_tab_view_state.dart';

/// View model of [MyoroTabView].
final class MyoroTabViewViewModel {
  MyoroTabViewViewModel({required int initiallySelectedTabIndex, required List<MyoroTabViewTab> tabs})
    : _state = MyoroTabViewState(initiallySelectedTabIndex: initiallySelectedTabIndex, tabs: tabs);

  /// State.
  final MyoroTabViewState _state;

  /// [_state] getter.
  MyoroTabViewState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Changes the selected tab index.
  void selectTab(MyoroTabViewTab tab) {
    _state.selectedTab = tab;
  }
}
