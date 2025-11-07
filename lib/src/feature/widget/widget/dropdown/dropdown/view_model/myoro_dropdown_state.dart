part of 'myoro_dropdown_view_model.dart';

/// State of [MyoroDropdownViewModel].
class MyoroDropdownState<T> {
  /// Default constructor.
  MyoroDropdownState(
    this.showingController,
    this.items,
    this.selectedItems,
    this.searchCallback,
    this.dropdownType,
    this.targetKey,
    this.itemBuilder,
  );

  /// [MyoroDropdown.showingController].
  ValueNotifier<bool> showingController;

  /// [MyoroDropdown.items].
  Set<T>? items;

  /// [MyoroDropdown.selectedItems].
  Set<T> selectedItems;

  /// [MyoroDropdown.searchCallback].
  MyoroMenuSearchCallback<T>? searchCallback;

  /// [MyoroDropdown.dropdownType].
  MyoroDropdownTypeEnum dropdownType;

  /// [MyoroDropdown.targetKey].
  GlobalKey? targetKey;

  /// [MyoroDropdown.itemBuilder].
  MyoroMenuItemBuilder<T> itemBuilder;

  /// [OverlayPortalController] of [MyoroDropdown] when [MyoroDropdown.dropdownType] is [MyoroDropdownTypeEnum.overlay].
  OverlayPortalController? _overlayPortalController;

  /// [LayerLink] of [CompositedTransformTarget] so we may position the overlay dropdown.
  final _link = LayerLink();

  /// [GlobalKey] of the base [Widget] so that we can open the modal and bottom sheet with it's [BuildContext].
  final _baseKey = GlobalKey();

  /// [TapRegion.groupId] of trigger area and dropdown so [TapRegion.onTapOutside]
  /// (which closes the dropdown) only activates when trigger area/dropdown is not pressed.
  late final _tapRegionGroupId = 'MyoroDropdown#$hashCode';

  /// [Size] of [MyoroDropdownConfiguration.overlayTargetKey]'s [Widget] to apply the offset.
  Size? targetKeySize;

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

  /// [_showingController] setter.
  set showing(bool showing) {
    showingController.value = showing;
  }

  /// [_overlayPortalController] setter.
  set overlayPortalController(OverlayPortalController? overlayPortalController) {
    _overlayPortalController = overlayPortalController;
  }
}
