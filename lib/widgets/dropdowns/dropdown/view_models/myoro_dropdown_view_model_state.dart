import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State class of [MyoroDropdownViewModel].
class MyoroDropdownViewModelState<T, C extends MyoroDropdownConfiguration<T>> {
  MyoroDropdownViewModelState(this.configuration);

  /// Configuration.
  final C configuration;

  /// [OverlayPortal] controller.
  ///
  /// Used when [MyoroDropdownConfiguration.menuTypeEnum] is [MyoroDropdownMenuTypeEnum.overlay].
  OverlayPortalController? _overlayPortalController;
  OverlayPortalController get overlayPortalController {
    assert(
      configuration.menuTypeEnum.isOverlay,
      '[MyoroDropdownViewModelState<$T>]: Cannot use [overlayPortalController] if '
      '[configuration.menuType] isn\'t [MyoroDropdownMenuTypeEnum.overlay].',
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

  /// Dispose function.
  void dispose() {
    inputController.dispose();
    inputSizeController.dispose();
  }
}
