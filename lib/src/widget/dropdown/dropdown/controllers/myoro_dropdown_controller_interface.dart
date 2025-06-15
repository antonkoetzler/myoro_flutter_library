/// Interface of [MyoroDropdownController].
abstract interface class MyoroDropdownControllerInterface<T> {
  /// Dispose function.
  void dispose();

  /// Toggles [_enabledNotifier].
  void toggleEnabled([bool? enabled]);

  /// Selects/deselects an item.
  void toggleItem(T item);

  /// Clears all items in [MyoroDropdownState.selectedItemsController].
  void clear();
}
