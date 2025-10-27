part of 'myoro_tab_view_view_model.dart';

/// State of [MyoroTabViewViewModel].
final class MyoroTabViewState {
  MyoroTabViewState({required int initiallySelectedTabIndex, required List<MyoroTabViewTab> tabs})
    : _selectedTabNotifier = ValueNotifier(tabs[initiallySelectedTabIndex]),
      _tabs = tabs;

  /// Tabs of the [MyoroTabView].
  final List<MyoroTabViewTab> _tabs;
  List<MyoroTabViewTab> get tabs => _tabs;

  /// [ValueNotifier] controlling which tab index is currently selected.
  final ValueNotifier<MyoroTabViewTab> _selectedTabNotifier;
  ValueNotifier<MyoroTabViewTab> get selectedTabNotifier => _selectedTabNotifier;
  MyoroTabViewTab get selectedTab => _selectedTabNotifier.value;
  set selectedTab(MyoroTabViewTab selectedTab) => _selectedTabNotifier.value = selectedTab;

  /// Dispose function.
  void dispose() {
    _selectedTabNotifier.dispose();
  }
}
