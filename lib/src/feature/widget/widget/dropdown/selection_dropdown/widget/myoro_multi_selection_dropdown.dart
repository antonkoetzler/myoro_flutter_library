part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Multi selection dropdown.
final class MyoroMultiSelectionDropdown<T> extends StatelessWidget {
  /// Default constructor.
  const MyoroMultiSelectionDropdown({super.key, this.showingController,
  this.initiallySelectedItems,
  this.selectedItemsController,
  }) : assert(
    !(initiallySelectedItems != null && selectedItemsController != null),
    '[MyoroMultiSelectionDropdown<$T>]: [initiallySelectedItems] and [selectedItemsController] cannot be provided together.',
  );

  /// [ValueNotifier] of showing controller.
  final ValueNotifier<bool>? showingController;

  /// Initially selected items.
  YOU ARE HERE
  final Set<T>? initiallySelectedItems;

  /// [ValueNotifier] of the selected items.
  final ValueNotifier<Set<T>>? selectedItemsController;

  @override
  Widget build(context) {
    return const _Base();
  }
}
