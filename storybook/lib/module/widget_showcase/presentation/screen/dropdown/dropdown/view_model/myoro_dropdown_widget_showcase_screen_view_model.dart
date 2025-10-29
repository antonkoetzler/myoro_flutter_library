part of '../myoro_dropdown_widget_showcase_screen.dart';

/// View model of [MyoroDropdownWidgetShowcaseScreen].
final class MyoroDropdownWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroDropdownWidgetShowcaseScreenState();

  /// Toggle dropdown visibility.
  void toggleDropdown() {
    final showingController = _state.showingController;
    showingController.value = !showingController.value;
  }

  /// [_state] getter.
  MyoroDropdownWidgetShowcaseScreenState get state {
    return _state;
  }
}
