part of 'myoro_dropdown_v2_bloc.dart';

@immutable
sealed class MyoroDropdownV2Event<T> {
  const MyoroDropdownV2Event();
}

/// If the item is selected, it will be deselected. It the item is not selected, it will be selected.
final class ToggleItemEvent<T> extends MyoroDropdownV2Event<T> {
  final T item;

  const ToggleItemEvent(this.item);
}

/// Adds a [Set] of items to [MyoroDropdownV2State.selectedItems].
///
/// If any items are already apart of [MyoroDropdownV2State.selectedItems],
/// they will not be removed from [MyoroDropdownV2State.selectedItems].
final class SelectItemsEvent<T> extends MyoroDropdownV2Event<T> {
  final Set<T> items;

  const SelectItemsEvent(this.items);
}

/// Adds a [Set] of items to [MyoroDropdownV2State.selectedItems].
///
/// If any items are already apart of [MyoroDropdownV2State.selectedItems],
/// they will not be added to [MyoroDropdownV2State.selectedItems].
final class RemoveSelectedItemsEvent<T> extends MyoroDropdownV2Event<T> {
  final Set<T> items;

  const RemoveSelectedItemsEvent(this.items);
}

/// Clears all of the selected item.
final class ClearSelectedItemsEvent<T> extends MyoroDropdownV2Event<T> {
  const ClearSelectedItemsEvent();
}

/// Toggles the value of [MyoroDropdownV2State.enabled].
final class ToggleEnabledEvent<T> extends MyoroDropdownV2Event<T> {
  final bool? enabled;

  const ToggleEnabledEvent([this.enabled]);
}
