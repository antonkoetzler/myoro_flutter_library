part of '../myoro_dropdown.dart';

/// Controller of [_Dropdown].
abstract class MyoroDropdownController<T> {
  /// Configuration.
  final MyoroDropdownConfiguration<T> _configuration;

  /// State.
  late final MyoroDropdownControllerState<T> _state;

  MyoroDropdownController(this._configuration) {
    _state = MyoroDropdownControllerState(_configuration, _enabledNotifierListener, () {
      _formatSelectedItems();
      _selectedItemsNotifierListener();
    });
  }

  /// Dispose function.
  void dispose();

  /// Toggles [_enabledNotifier].
  void toggleEnabled([bool? enabled]);

  /// Selects/deselects an item.
  void toggleItem(T item);

  /// Toggles [_Menu].
  void toggleMenu();

  /// Clears all items in [_selectedItemsNotifier].
  void clearSelectedItems();

  /// Formats items in [_selectedItemsNotifier] to display in [_Input].
  void _formatSelectedItems();

  /// Handles the callback of a dropdown's checkbox on changed argument.
  void _enabledNotifierListener();

  /// Handles the callback of when [_selectedItemsNotifier] has changed.
  void _selectedItemsNotifierListener();

  ValueNotifier<bool> get enabledNotifier => _state._enabledNotifier;

  bool get enabled => enabledNotifier.value;

  ValueNotifier<Set<T>> get selectedItemsNotifier => _state._selectedItemsNotifier;

  OverlayPortalController get _overlayPortalController {
    assert(
      _configuration.menuTypeEnum.isOverlay,
      '[MyoroDropdownController<$T>.overlayPortalController]: [_configuration.menuTypeEnum] '
      'must be [MyoroDropdownMenuTypeEnum.overlay].',
    );
    return _state._overlayPortalController!;
  }

  TextEditingController get _inputController => _state._inputController;
}
