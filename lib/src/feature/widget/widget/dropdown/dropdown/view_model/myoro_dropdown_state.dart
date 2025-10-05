part of 'myoro_dropdown_view_model.dart';

/// State of [MyoroDropdownViewModel].
class MyoroDropdownState<
  T,
  C extends MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
  MENU_CONTROLLER extends MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>
> {
  MyoroDropdownState(this.configuration, this.menuController);

  /// Dispose function.
  void dispose() {
    _showingController.dispose();
    menuController.dispose();
  }

  /// Configuration.
  C configuration;

  /// Menu controller.
  final MENU_CONTROLLER menuController;

  /// [OverlayPortalController] of [MyoroDropdown] when [MyoroDropdown.dropdownType] is [MyoroDropdownTypeEnum.overlay].
  OverlayPortalController? _overlayPortalController;

  /// [LayerLink] of [CompositedTransformTarget] so we may position the overlay dropdown.
  final _link = LayerLink();

  /// [ValueNotifier] controlling if the dropdown is being displayed or not.
  final _showingController = ValueNotifier<bool>(false);

  /// [bool] to control if the modal/bottom sheet can be popped or not.
  bool modalShowing = false;

  /// [GlobalKey] of the base [Widget] so that we can open the modal and bottom sheet with it's [BuildContext].
  final _baseKey = GlobalKey();

  /// [TapRegion.groupId] of trigger area and dropdown so [TapRegion.onTapOutside]
  /// (which closes the dropdown) only activates when trigger area/dropdown is not pressed.
  late final _tapRegionGroupId = 'MyoroDropdown#$hashCode';

  /// [Size] of [MyoroDropdownConfiguration.overlayTargetKey]'s [Widget] to apply the offset.
  Size? targetKeySize;

  /// [_overlayPortalController] getter.
  OverlayPortalController get overlayPortalController {
    final dropdownType = configuration.dropdownType;
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

  /// [_showingController] getter.
  ValueNotifier<bool> get showingController {
    return _showingController;
  }

  /// Getter of [_showingController]'s value.
  bool get showing {
    return _showingController.value;
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
  set showing(bool showingController) {
    _showingController.value = showingController;
  }

  /// [_overlayPortalController] setter.
  set overlayPortalController(OverlayPortalController? overlayPortalController) {
    _overlayPortalController = overlayPortalController;
  }
}
