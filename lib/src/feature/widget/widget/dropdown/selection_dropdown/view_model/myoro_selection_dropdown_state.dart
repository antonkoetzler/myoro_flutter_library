part of 'myoro_selection_dropdown_view_model.dart';

/// State class of [MyoroSelectionDropdownViewModel].
class MyoroSelectionDropdownState<
  T,
  CONFIGURATION extends MyoroSelectionDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
  MENU_CONTROLLER extends MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>
> {
  MyoroSelectionDropdownState(this.configuration, this.menuController)
    : _enabledNotifier = ValueNotifier(configuration.enabled);

  /// Configuration.
  CONFIGURATION configuration;

  /// [MyoroMenuController]. This is the source of truth for the selected items of the dropdown.
  final MENU_CONTROLLER menuController;

  /// [ValueNotifier] controlling if the [_SelectionDropdown] is enabled or not.
  final ValueNotifier<bool> _enabledNotifier;

  /// [_enabledNotifier] getter.
  ValueNotifier<bool> get enabledNotifier {
    return _enabledNotifier;
  }

  /// Getter of [_enabledNotifier]'s value.
  bool get enabled {
    return _enabledNotifier.value;
  }

  /// Used when [MyoroSelectionDropdownConfiguration.menuTypeEnum] is [MyoroSelectionDropdownMenuTypeEnum.overlay].
  MyoroOverlayPortalController? _overlayMenuController;

  /// [_overlayMenuController] getter.
  MyoroOverlayPortalController get overlayMenuController {
    assert(
      configuration.menuTypeEnum.isOverlay,
      '[MyoroSelectionDropdownState<$T>]: Cannot use [overlayMenuController] if '
      '[configuration.menuType] isn\'t [MyoroSelectionDropdownMenuTypeEnum.overlay].',
    );
    return _overlayMenuController ??= MyoroOverlayPortalController();
  }

  /// [ValueNotifier] used to store the [bool] of whether or not the menu is active or not.
  /// When calling [MyoroOverlayPortalController.hide] or [MyoroOverlayPortalController.show],
  /// The value of [_showingMenuNotifier] is automatically synced with [_overlayMenuController].
  final _showingMenuNotifier = ValueNotifier<bool>(false);

  /// [_showingMenuNotifier] getter.
  ValueNotifier<bool> get showingMenuNotifier {
    return _showingMenuNotifier;
  }

  /// Getter of [_showingMenuNotifier]'s value.
  bool get showingMenu {
    return _showingMenuNotifier.value;
  }

  /// [_showingMenuNotifier] setter.
  set showingMenu(bool showingMenu) {
    _showingMenuNotifier.value = showingMenu;
  }

  /// [ScrollController] of [_Menu].
  final _menuScrollController = ScrollController();

  /// [_menuScrollController] getter.
  ScrollController get menuScrollController {
    return _menuScrollController;
  }

  /// [TapRegion.groupId] of [_InputTriggerArea] and [_Menu] so [TapRegion.onTapOutside]
  /// (which closes the menu) only activates when [_InputTriggerArea]/[_Menu] is not pressed.
  late final _tapRegionGroupId = 'MyoroSelectionDropdown#$hashCode';

  /// [_tapRegionGroupId] getter.
  String get tapRegionGroupId {
    return _tapRegionGroupId;
  }

  /// [TextEditingController] of [_Input].
  final _inputController = TextEditingController();

  /// [_inputController] getter.
  TextEditingController get inputController {
    return _inputController;
  }

  /// [GlobalKey] of [_Input] to pass it's [Size] to [_inputSizeNotifier].
  final _inputKey = GlobalKey();

  /// [_inputKey] getter.
  GlobalKey get inputKey {
    return _inputKey;
  }

  /// [ValueNotifier] that stores the [Size] of [_Input].
  final _inputSizeNotifier = ValueNotifier<Size?>(null);

  /// [_inputSizeNotifier] getter.
  ValueNotifier<Size?> get inputSizeNotifier {
    return _inputSizeNotifier;
  }

  /// Getter of [_inputSizeNotifier]'s value.
  Size? get inputSize {
    return _inputSizeNotifier.value;
  }

  /// [_inputSizeNotifier] setter.
  set inputSize(Size? inputSize) {
    _inputSizeNotifier.value = inputSize;
  }

  /// [LayerLink] of [CompositedTransformTarget] so we may position the
  /// [OverlayPortal] relative to the position of [_SelectionDropdownState] in [_Input].
  final _link = LayerLink();

  /// [_link] getter.
  LayerLink get link {
    return _link;
  }

  /// Dispose function.
  void dispose() {
    menuController.dispose();
    _enabledNotifier.dispose();
    _showingMenuNotifier.dispose();
    _menuScrollController.dispose();
    _inputController.dispose();
    _inputSizeNotifier.dispose();
  }
}
