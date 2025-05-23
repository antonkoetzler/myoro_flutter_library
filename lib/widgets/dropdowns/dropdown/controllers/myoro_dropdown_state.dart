import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State class of [MyoroDropdownController].
class MyoroDropdownState<T, C extends MyoroDropdownConfiguration<T>> {
  /// Configuration.
  final C configuration;

  /// [ValueNotifier] controlling if the [_Dropdown] is enabled or not.
  late final ValueNotifier<bool> enabledController;
  bool get enabled => enabledController.value;

  /// [ValueNotifier] controlling the selected items of the [_Dropdown].
  late final ValueNotifier<Set<T>> selectedItemsController;
  Set<T> get selectedItems => selectedItemsController.value;

  /// [OverlayPortal] controller.
  ///
  /// Used when [MyoroDropdownConfiguration.menuTypeEnum] is [MyoroDropdownMenuTypeEnum.overlay].
  OverlayPortalController? _overlayPortalController;
  OverlayPortalController get overlayPortalController {
    assert(
      configuration.menuTypeEnum.isOverlay,
      '[MyoroDropdownState<$T>]: Cannot use [overlayPortalController] if '
      '[configuration.menuType] is [MyoroDropdownMenuTypeEnum.overlay].',
    );
    return _overlayPortalController ??= OverlayPortalController();
  }

  /// [TapRegion.groupId] of [_InputTriggerArea] and [_Menu] so [TapRegion.onTapOutside]
  /// (which closes the menu) only activates when [_InputTriggerArea]/[_Menu] is not pressed.
  late final String tapRegionGroupId = 'MyoroDropdown#$hashCode';

  /// [TextEditingController] of [_Input].
  final inputController = TextEditingController();

  /// [GlobalKey] of [_Input] to pass it's [Size] to [inputSizeController].
  final inputKey = GlobalKey();

  /// [ValueNotifier] that stores the [Size] of [_Input].
  final inputSizeController = ValueNotifier<Size?>(null);
  Size? get inputSize => inputSizeController.value;

  /// [LayerLink] of [CompositedTransformTarget] so we may position the
  /// [OverlayPortal] relative to the position of [_DropdownState] in [_Input].
  final link = LayerLink();

  MyoroDropdownState(
    this.configuration,
    VoidCallback enabledControllerListener,
    VoidCallback selectedItemsControllerListener,
  ) {
    enabledController = ValueNotifier(configuration.enabled)..addListener(enabledControllerListener);
    selectedItemsController = ValueNotifier(configuration.initiallySelectedItems)
      ..addListener(selectedItemsControllerListener);
  }

  /// Dispose function.
  void dispose() {
    enabledController.dispose();
    selectedItemsController.dispose();
    inputController.dispose();
    inputSizeController.dispose();
  }
}
