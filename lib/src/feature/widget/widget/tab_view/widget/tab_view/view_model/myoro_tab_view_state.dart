part of 'myoro_tab_view_view_model.dart';

/// State of [MyoroTabViewViewModel].
final class MyoroTabViewState {
  MyoroTabViewState(this.configuration)
    : _selectedTabNotifier = ValueNotifier(configuration.tabs[configuration.initiallySelectedTabIndex]);

  /// Configuration.
  final MyoroTabViewConfiguration configuration;

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
