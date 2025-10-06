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
    final targetKeyRenderBox = targetKey?.currentContext?.findRenderObject() as RenderBox?;
    state.targetKeySize = targetKeyRenderBox?.size;
    if (isOverlay) state.overlayPortalController.show();
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
    final context = _state.baseKey.currentContext;
    if (showing) {
      if (isModal || isBottomSheet) {
        if (context == null || _state.modalShowing) return;
        if (isModal) {
          MyoroModal.showModal(
            context,
            style: const MyoroModalStyle(padding: EdgeInsets.zero),
            child: menuWidget,
          ).then((_) {
            _state.modalShowing = false;
            _state.showing = false;
          });
        }
        if (isBottomSheet) {
          MyoroModal.showBottomSheet(
            context,
            style: const MyoroModalStyle(padding: EdgeInsets.zero),
            child: menuWidget,
          ).then((_) {
            _state.modalShowing = false;
            _state.showing = false;
          });
        }
        _state.modalShowing = true;
      }
    } else {
      if (isModal || isBottomSheet) {
        if (context == null || !_state.modalShowing) return;
        if (isModal) context.navigator.pop();
        if (isBottomSheet) context.navigator.pop();
        _state.modalShowing = false;
      }
    }
  }

  /// Builds the dropdown (menu) [Widget].
  Widget get menuWidget;

  /// [_menuStyle] getter.
  MyoroMenuStyle get menuStyle {
    assert(_menuStyle != null, '[MyoroDropdownViewModel.menuStyle]: [menuStyle] has not been set yet.');
    final configuration = state.configuration;
    final dropdownType = configuration.dropdownType;
    final isModal = dropdownType.isModal;
    final isBottomSheet = dropdownType.isBottomSheet;
    final isModalOrBottomSheet = isModal || isBottomSheet;
    return _menuStyle!.copyWith(
      border: isModalOrBottomSheet ? Border.all(width: 0, color: MyoroColors.transparent) : null,
      borderRadius: isModalOrBottomSheet ? BorderRadius.zero : null,
    );
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

  /// [_menuStyle] setter.
  set menuStyle(MyoroMenuStyle menuStyle) {
    _menuStyle = menuStyle;
  }
}
