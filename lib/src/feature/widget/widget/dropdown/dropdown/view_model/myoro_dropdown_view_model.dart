import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dropdown_state.dart';

/// View model of [MyoroDropdown].
abstract class MyoroDropdownViewModel<
  T,
  C extends MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
  MENU_CONTROLLER extends MyoroMenuController<T, MyoroMenuViewModel<T, MyoroMenuConfiguration<T>>>
> {
  MyoroDropdownViewModel(C configuration, MENU_CONTROLLER menuController)
    : _state = MyoroDropdownState(configuration, menuController) {
    final dropdownType = configuration.dropdownType;
    final isModal = dropdownType.isModal;
    final isBottomSheet = dropdownType.isBottomSheet;
    final isOverlay = dropdownType.isOverlay;
    if (isModal || isBottomSheet) state.showingController.addListener(_showingControllerListener);
    if (isOverlay) state.overlayPortalController = OverlayPortalController();
  }

  /// Build context to show the dropdown in a modal or bottom sheet.
  BuildContext? _context;

  /// Menu style.
  MyoroMenuStyle? _menuStyle;

  /// State.
  final MyoroDropdownState<T, C, MENU_CONTROLLER> _state;

  /// Dispose function.
  @mustCallSuper
  void dispose() {
    _state.dispose();
  }

  /// Toggles the display of the dropdown.
  void toggle() {
    _state.showing ? disable() : enable();
  }

  /// Enables the dropdown.
  void enable() {
    final configuration = _state.configuration;
    final dropdownType = configuration.dropdownType;
    final isOverlay = dropdownType.isOverlay;
    final showing = _state.showing;
    final targetKey = configuration.targetKey;
    if (showing) return;
    if (isOverlay) state.overlayPortalController.show();
    final targetKeyRenderBox = targetKey?.currentContext?.findRenderObject() as RenderBox?;
    state.targetKeySize = targetKeyRenderBox?.size;
    _state.showing = true;
  }

  /// Disables the dropdown.
  void disable() {
    final configuration = _state.configuration;
    final dropdownType = configuration.dropdownType;
    final isOverlay = dropdownType.isOverlay;
    final showing = _state.showing;
    if (!showing) return;
    if (isOverlay) _state.overlayPortalController.hide();
    state.targetKeySize = null;
    _state.showing = false;
  }

  /// Listener for [_state.showingController].
  void _showingControllerListener() {
    final configuration = _state.configuration;
    final dropdownType = configuration.dropdownType;
    final isModal = dropdownType.isModal;
    final isBottomSheet = dropdownType.isBottomSheet;
    final showing = _state.showing;
    if (showing) {
      if (isModal) MyoroModal.showModal(context, child: menuWidget);
      if (isBottomSheet) MyoroModal.showBottomSheet(context, child: menuWidget);
    } else {
      if (isModal) context.navigator.pop();
      if (isBottomSheet) context.navigator.pop();
    }
  }

  /// Builds the dropdown (menu) [Widget].
  Widget get menuWidget;

  /// [_context] getter.
  BuildContext get context {
    assert(_context != null, '[MyoroDropdownViewModel.context]: [context] has not been set yet.');
    return _context!;
  }

  /// [_menuStyle] getter.
  MyoroMenuStyle get menuStyle {
    assert(_menuStyle != null, '[MyoroDropdownViewModel.menuStyle]: [menuStyle] has not been set yet.');
    return _menuStyle!;
  }

  /// Getter that returns if [_menuStyle] is set.
  bool get menuStyleInitialized {
    return _menuStyle != null;
  }

  /// [_state] getter.
  MyoroDropdownState<T, C, MENU_CONTROLLER> get state => _state;

  /// [MyoroDropdownState.configuration] setter.
  set configuration(C configuration) {
    if (_state.configuration == configuration) return;
    final isOverlay = configuration.dropdownType.isOverlay;
    final isModal = configuration.dropdownType.isModal;
    final isBottomSheet = configuration.dropdownType.isBottomSheet;
    final showingController = state.showingController;
    _state.configuration = configuration;
    _state.overlayPortalController = isOverlay ? OverlayPortalController() : null;
    showingController.removeListener(_showingControllerListener);
    if (isModal || isBottomSheet) showingController.addListener(_showingControllerListener);
  }

  /// [_context] setter.
  set context(BuildContext context) {
    _context = context;
  }

  /// [_menuStyle] setter.
  set menuStyle(MyoroMenuStyle menuStyle) {
    _menuStyle = menuStyle;
  }
}
