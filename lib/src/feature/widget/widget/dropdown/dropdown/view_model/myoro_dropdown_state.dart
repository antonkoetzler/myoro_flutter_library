part of 'myoro_dropdown_view_model.dart';

/// State class of [MyoroDropdownViewModel].
class MyoroDropdownState<T, C extends MyoroDropdownConfiguration<T>> {
  MyoroDropdownState(this.configuration, Set<T> initiallySelectedItems)
    : _enabledNotifier = ValueNotifier(configuration.enabled),
      _selectedItemsNotifier = ValueNotifier(initiallySelectedItems);

  /// Configuration.
  C configuration;

  /// [ValueNotifier] controlling if the [_Dropdown] is enabled or not.
  final ValueNotifier<bool> _enabledNotifier;
  ValueNotifier<bool> get enabledNotifier => _enabledNotifier;
  bool get enabled => _enabledNotifier.value;

  /// [ValueNotifier] controlling the selected items of the [_Dropdown].
  final ValueNotifier<Set<T>> _selectedItemsNotifier;
  ValueNotifier<Set<T>> get selectedItemsNotifier => _selectedItemsNotifier;
  Set<T> get selectedItems => Set.from(_selectedItemsNotifier.value);

  /// Used when [MyoroDropdownConfiguration.menuTypeEnum] is [MyoroDropdownMenuTypeEnum.overlay].
  MyoroOverlayPortalController? _overlayMenuController;
  MyoroOverlayPortalController get overlayMenuController {
    assert(
      configuration.menuTypeEnum.isOverlay,
      '[MyoroDropdownState<$T>]: Cannot use [overlayMenuController] if '
      '[configuration.menuType] isn\'t [MyoroDropdownMenuTypeEnum.overlay].',
    );
    return _overlayMenuController ??= MyoroOverlayPortalController();
  }

  /// [ValueNotifier] used to store the [bool] of whether or not the menu is active or not.
  /// When calling [MyoroOverlayPortalController.hide] or [MyoroOverlayPortalController.show],
  /// The value of [_showingMenuNotifier] is automatically synced with [_overlayMenuController].
  final _showingMenuNotifier = ValueNotifier<bool>(false);
  ValueNotifier<bool> get showingMenuNotifier => _showingMenuNotifier;
  bool get showingMenu => _showingMenuNotifier.value;
  set showingMenu(bool showingMenu) => _showingMenuNotifier.value = showingMenu;

  /// [ScrollController] of [_Menu].
  final _menuScrollController = ScrollController();
  ScrollController get menuScrollController => _menuScrollController;

  /// [TapRegion.groupId] of [_InputTriggerArea] and [_Menu] so [TapRegion.onTapOutside]
  /// (which closes the menu) only activates when [_InputTriggerArea]/[_Menu] is not pressed.
  late final _tapRegionGroupId = 'MyoroDropdown#$hashCode';
  String get tapRegionGroupId => _tapRegionGroupId;

  /// [TextEditingController] of [_Input].
  final _inputController = TextEditingController();
  TextEditingController get inputController => _inputController;

  /// [GlobalKey] of [_Input] to pass it's [Size] to [_inputSizeNotifier].
  final _inputKey = GlobalKey();
  GlobalKey get inputKey => _inputKey;

  /// [ValueNotifier] that stores the [Size] of [_Input].
  final _inputSizeNotifier = ValueNotifier<Size?>(null);
  ValueNotifier<Size?> get inputSizeNotifier => _inputSizeNotifier;
  Size? get inputSize => _inputSizeNotifier.value;
  set inputSize(Size? inputSize) => _inputSizeNotifier.value = inputSize;

  /// [LayerLink] of [CompositedTransformTarget] so we may position the
  /// [OverlayPortal] relative to the position of [_DropdownState] in [_Input].
  final _link = LayerLink();
  LayerLink get link => _link;

  /// Dispose function.
  void dispose() {
    _enabledNotifier.dispose();
    _selectedItemsNotifier.dispose();
    _showingMenuNotifier.dispose();
    _menuScrollController.dispose();
    _inputController.dispose();
    _inputSizeNotifier.dispose();
  }
}
