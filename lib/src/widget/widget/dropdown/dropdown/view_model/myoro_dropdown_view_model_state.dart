import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State class of [MyoroDropdownViewModel].
class MyoroDropdownViewModelState<T, C extends MyoroDropdownConfiguration<T>> {
  MyoroDropdownViewModelState(this.configuration);

  /// Configuration.
  C configuration;

  /// Used when [MyoroDropdownConfiguration.menuTypeEnum] is [MyoroDropdownMenuTypeEnum.overlay].
  MyoroOverlayPortalController? _overlayMenuController;
  MyoroOverlayPortalController get overlayMenuController {
    assert(
      configuration.menuTypeEnum.isOverlay,
      '[MyoroDropdownViewModelState<$T>]: Cannot use [overlayMenuController] if '
      '[configuration.menuType] isn\'t [MyoroDropdownMenuTypeEnum.overlay].',
    );
    return _overlayMenuController ??= MyoroOverlayPortalController();
  }

  /// [ValueNotifier] used to store the [bool] of whether or not the menu is active or not.
  /// When calling [MyoroOverlayPortalController.hide] or [MyoroOverlayPortalController.show],
  /// The value of [_showingMenuController] is automatically synced with [_overlayMenuController].
  final _showingMenuController = ValueNotifier<bool>(false);
  ValueNotifier<bool> get showingMenuController => _showingMenuController;
  bool get showingMenu => _showingMenuController.value;
  set showingMenu(bool showingMenu) => _showingMenuController.value = showingMenu;

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

  /// [GlobalKey] of [_Input] to pass it's [Size] to [inputSizeController].
  final _inputKey = GlobalKey();
  GlobalKey get inputKey => _inputKey;

  /// [ValueNotifier] that stores the [Size] of [_Input].
  final _inputSizeController = ValueNotifier<Size?>(null);
  ValueNotifier<Size?> get inputSizeController => _inputSizeController;
  Size? get inputSize => _inputSizeController.value;
  set inputSize(Size? inputSize) => _inputSizeController.value = inputSize;

  /// [LayerLink] of [CompositedTransformTarget] so we may position the
  /// [OverlayPortal] relative to the position of [_DropdownState] in [_Input].
  final link = LayerLink();

  /// Dispose function.
  void dispose() {
    _showingMenuController.dispose();
    _menuScrollController.dispose();
    _inputController.dispose();
    _inputSizeController.dispose();
  }
}
