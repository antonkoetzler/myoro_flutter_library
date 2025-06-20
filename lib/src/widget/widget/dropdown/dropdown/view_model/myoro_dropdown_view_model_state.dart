import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State class of [MyoroDropdownViewModel].
class MyoroDropdownViewModelState<T, C extends MyoroDropdownConfiguration<T>> {
  MyoroDropdownViewModelState(this.configuration);

  /// Configuration.
  C configuration;

  /// [OverlayPortal] controller.
  ///
  /// Used when [MyoroDropdownConfiguration.menuTypeEnum] is [MyoroDropdownMenuTypeEnum.overlay].
  OverlayPortalController? _overlayMenuController;
  OverlayPortalController get overlayMenuController {
    assert(
      configuration.menuTypeEnum.isOverlay,
      '[MyoroDropdownViewModelState<$T>]: Cannot use [overlayMenuController] if '
      '[configuration.menuType] isn\'t [MyoroDropdownMenuTypeEnum.overlay].',
    );
    return _overlayMenuController ??= OverlayPortalController();
  }

  /// [ValueNotifier] controlling whether or not the menu of the dropdown is showing when
  /// [MyoroDropdownConfiguration.menuTypeEnum] is not [MyoroDropdownMenuTypeEnum.overlay].
  ValueNotifier<bool>? _showBasicMenuController;
  bool get showBasicMenu => showBasicMenuController.value;
  ValueNotifier<bool> get showBasicMenuController {
    assert(
      !configuration.menuTypeEnum.isOverlay,
      '[MyoroDropdownViewModelState<$T>]: Cannot use [showBasicMenuController] '
      'if [configuration.menuType] is [MyoroDropdownMenuTypeEnum.overlat].',
    );
    return _showBasicMenuController ??= ValueNotifier(false);
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

  /// Dispose function.
  void dispose() {
    inputController.dispose();
    inputSizeController.dispose();
  }
}
