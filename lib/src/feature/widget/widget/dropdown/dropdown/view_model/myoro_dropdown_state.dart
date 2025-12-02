part of 'myoro_dropdown_view_model.dart';

/// State of [MyoroDropdownViewModel].
class MyoroDropdownState<T> {
  /// Default constructor.
  MyoroDropdownState(
    this.showingController,
    this.items,
    Set<T> selectedItems,
    this.showSearchBar,
    this.dropdownType,
    this.targetKey,
    this.itemBuilder,
    this.footer,
  ) : _selectedItemsController = ValueNotifier(selectedItems);

  /// [MyoroDropdown.showingController].
  ValueNotifier<bool> showingController;

  /// [MyoroDropdown.items].
  Set<T>? items;

  /// [MyoroDropdown.dropdownType].
  MyoroDropdownTypeEnum dropdownType;

  /// [MyoroDropdown.targetKey].
  GlobalKey? targetKey;

  /// [MyoroDropdown.itemBuilder].
  MyoroMenuItemBuilder<T> itemBuilder;

  /// [MyoroDropdown.footer].
  Widget? footer;

  /// Selected items controller.
  final ValueNotifier<Set<T>> _selectedItemsController;

  /// [MyoroDropdown.showSearchBar].
  bool showSearchBar;

  /// [OverlayPortalController] of [MyoroDropdown] when [MyoroDropdown.dropdownType] is [MyoroDropdownTypeEnum.overlay].
  OverlayPortalController? _overlayPortalController;

  /// Variable to use in _MyoroDropdownState's _showingControllerListener.
  ///
  /// Used in the case where we close the modal naturally, via barrier
  /// and then we don't need to call context.navigator.pop(), as the
  /// user has already done this for us. So this is a pseudo-workaround.
  bool wasClosedNaturally = false;

  /// [LayerLink] of [CompositedTransformTarget] so we may position the overlay dropdown.
  final _link = LayerLink();

  /// [GlobalKey] of the base [Widget] so that we can open the modal and bottom sheet with it's [BuildContext].
  final _baseKey = GlobalKey();

  /// [TapRegion.groupId] of trigger area and dropdown so [TapRegion.onTapOutside]
  /// (which closes the dropdown) only activates when trigger area/dropdown is not pressed.
  late final _tapRegionGroupId = 'MyoroDropdown#$hashCode';

  /// [Size] of the overlay target key's [Widget] to apply the offset.
  Size? targetKeySize;

  /// Dispose function.
  void dispose() {
    _selectedItemsController.dispose();
  }

  /// [_selectedItemsController] getter.
  ValueNotifier<Set<T>> get selectedItemsController {
    return _selectedItemsController;
  }

  /// [_selectedItemsController] getter.
  Set<T> get selectedItems {
    return _selectedItemsController.value;
  }

  /// Getter of [showingController]'s value.
  bool get showing {
    return showingController.value;
  }

  /// [_overlayPortalController] getter.
  OverlayPortalController get overlayPortalController {
    assert(
      dropdownType.isOverlay,
      '[MyoroDropdownDisplayController]: Cannot use [overlayPortalController] if '
      '[dropdownType] isn\'t [MyoroDropdownTypeEnum.overlay].',
    );
    return _overlayPortalController!;
  }

  /// [_link] getter.
  LayerLink get link {
    return _link;
  }

  /// [_baseKey] getter.
  GlobalKey get baseKey {
    return _baseKey;
  }

  /// [_tapRegionGroupId] getter.
  String get tapRegionGroupId {
    return _tapRegionGroupId;
  }

  /// [_selectedItemsController] setter.
  set selectedItems(Set<T> selectedItems) {
    _selectedItemsController.value = selectedItems;
  }

  /// [_showingController] setter.
  set showing(bool showing) {
    showingController.value = showing;
  }

  /// [_overlayPortalController] setter.
  set overlayPortalController(OverlayPortalController? overlayPortalController) {
    _overlayPortalController = overlayPortalController;
  }
}
