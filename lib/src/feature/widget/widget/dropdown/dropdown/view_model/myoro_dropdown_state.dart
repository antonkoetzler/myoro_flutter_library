part of 'myoro_dropdown_view_model.dart';

/// State of [MyoroDropdownViewModel].
class MyoroDropdownState<T, C extends MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>> {
  MyoroDropdownState(this.configuration);

  /// Dispose function.
  void dispose() {
    _showingController.dispose();
  }

  /// Configuration.
  C configuration;

  /// [OverlayPortalController] of [MyoroDropdown] when [MyoroDropdown.dropdownType] is [MyoroDropdownTypeEnum.overlay].
  OverlayPortalController? _overlayPortalController;

  /// [LayerLink] of [CompositedTransformTarget] so we may position the overlay dropdown.
  final _link = LayerLink();

  /// [ValueNotifier] controlling if the dropdown is being displayed or not.
  final _showingController = ValueNotifier<bool>(false);

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

  /// [_showingController] setter.
  set showing(bool showingController) {
    _showingController.value = showingController;
  }

  /// [_overlayPortalController] setter.
  set overlayPortalController(OverlayPortalController? overlayPortalController) {
    _overlayPortalController = overlayPortalController;
  }

  /// [TapRegion.groupId] of trigger area and dropdown so [TapRegion.onTapOutside]
  /// (which closes the dropdown) only activates when trigger area/dropdown is not pressed.
  late final _tapRegionGroupId = 'MyoroDropdown#$hashCode';

  /// [_tapRegionGroupId] getter.
  String get tapRegionGroupId {
    return _tapRegionGroupId;
  }
}
