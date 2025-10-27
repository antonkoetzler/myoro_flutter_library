part of 'myoro_dropdown_view_model.dart';

/// State of [MyoroDropdownViewModel].
class MyoroDropdownState<T, DROPDOWN_CONTROLLER extends MyoroDropdownController<T>> {
  /// Default constructor.
  MyoroDropdownState(this.dropdownController, this.dropdownType, this.targetKey, this.request, this.itemBuilder);

  /// Dropdown controller.
  final DROPDOWN_CONTROLLER dropdownController;

  /// Dropdown type.
  final MyoroDropdownTypeEnum dropdownType;

  /// Target key.
  final GlobalKey? targetKey;

  /// Request of the dropdown's menu.
  final MyoroMenuRequest<T> request;

  /// Menu's item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

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

  /// Dispose function.
  void dispose() {
    dropdownController.dispose();
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

  /// [_overlayPortalController] setter.
  set overlayPortalController(OverlayPortalController? overlayPortalController) {
    _overlayPortalController = overlayPortalController;
  }
}
