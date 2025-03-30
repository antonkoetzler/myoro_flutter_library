part of 'myoro_dropdown_bloc.dart';

@immutable
sealed class MyoroDropdownEvent<T> {
  const MyoroDropdownEvent();
}

/// If the item is selected, it will be deselected. It the item is not selected, it will be selected.
final class ToggleItemEvent<T> extends MyoroDropdownEvent<T> {
  final T item;

  const ToggleItemEvent(this.item);
}

/// Adds a [Set] of items to [MyoroDropdownState.selectedItems].
///
/// If any items are already apart of [MyoroDropdownState.selectedItems],
/// they will not be removed from [MyoroDropdownState.selectedItems].
final class SelectItemsEvent<T> extends MyoroDropdownEvent<T> {
  final Set<T> items;

  const SelectItemsEvent(this.items);
}

/// Adds a [Set] of items to [MyoroDropdownState.selectedItems].
///
/// If any items are already apart of [MyoroDropdownState.selectedItems],
/// they will not be added to [MyoroDropdownState.selectedItems].
final class RemoveSelectedItemsEvent<T> extends MyoroDropdownEvent<T> {
  final Set<T> items;

  const RemoveSelectedItemsEvent(this.items);
}

/// Clears all of the selected item.
final class ClearSelectedItemsEvent<T> extends MyoroDropdownEvent<T> {
  const ClearSelectedItemsEvent();
}

/// Toggles the value of [MyoroDropdownState.enabled].
final class ToggleEnabledEvent<T> extends MyoroDropdownEvent<T> {
  final bool? enabled;

  const ToggleEnabledEvent([this.enabled]);
}
