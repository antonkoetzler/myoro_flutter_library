part of '../myoro_dropdown.dart';

/// State class of [MyoroDropdownController].
class MyoroDropdownControllerState<T> {
  /// [ValueNotifier] controlling if the [_Dropdown] is enabled or not.
  late final ValueNotifier<bool> _enabledNotifier;

  /// [ValueNotifier] controlling the selected items of the [_Dropdown].
  late final ValueNotifier<Set<T>> _selectedItemsNotifier;

  /// [OverlayPortal] controller.
  ///
  /// Used when [MyoroDropdownConfiguration.menuTypeEnum] is [MyoroDropdownMenuTypeEnum.overlay].
  OverlayPortalController? _overlayPortalController;

  /// [TapRegion.groupId] of [_InputTriggerArea] and [_Menu] so [TapRegion.onTapOutside]
  /// (which closes the menu) only activates when [_InputTriggerArea]/[_Menu] is not pressed.
  late final String _tapRegionGroupId = 'MyoroDropdown#$hashCode';

  /// [TextEditingController] of [_Input].
  final _inputController = TextEditingController();

  /// In order to pass the [Size] of [_Input] to [_InputTriggerArea] and [_Menu].
  final _inputKey = GlobalKey();
  final _inputSizeNotifier = ValueNotifier<Size?>(null);

  /// [LayerLink] of [CompositedTransformTarget] so we may position the
  /// [OverlayPortal] relative to the position of [_DropdownState] in [_Input].
  final _link = LayerLink();

  MyoroDropdownControllerState(
    MyoroDropdownConfiguration<T> configuration,
    VoidCallback enabledNotifierListener,
    VoidCallback selectedItemsNotifierListener,
  ) {
    _enabledNotifier = ValueNotifier(configuration.enabled)..addListener(enabledNotifierListener);
    _selectedItemsNotifier = ValueNotifier(configuration.initiallySelectedItems)
      ..addListener(selectedItemsNotifierListener);
  }

  /// Dispose function.
  void dispose() {
    _enabledNotifier.dispose();
    _selectedItemsNotifier.dispose();
    _inputController.dispose();
    _inputSizeNotifier.dispose();
  }
}
