part of '../bundle/myoro_dropdown_bundle.dart';

/// [MyoroMenu] responsible for acting as the dropdown menu.
final class _Menu<T, C extends _C<T>> extends StatefulWidget {
  /// Shows a [MyoroModel] when [MyoroDropdownConfiguration.menuTypeEnum] is [MyoroDropdownMenuTypeEnum.modal].
  static void showModal<T, C extends _C<T>>(BuildContext context, MyoroDropdownViewModel<T, C> viewModel) {
    MyoroModal.showModal(
      context,
      configuration: const MyoroModalConfiguration(barrierDismissable: false),
      child: InheritedProvider.value(
        value: viewModel,
        child: Center(
          child: Scrollbar(
            controller: viewModel.state.menuScrollController,
            thumbVisibility: true,
            child: SingleChildScrollView(controller: viewModel.state.menuScrollController, child: _Menu<T, C>()),
          ),
        ),
      ),
    );
  }

  const _Menu();

  @override
  State<_Menu<T, C>> createState() => _MenuState<T, C>();
}

final class _MenuState<T, C extends _C<T>> extends State<_Menu<T, C>> {
  late final _viewModel = context.read<MyoroDropdownViewModel<T, C>>();

  @override
  void initState() {
    super.initState();
    _addShowingMenuControllerListener();
  }

  @override
  void dispose() {
    _removeShowingMenuControllerListener();
    super.dispose();
  }

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownsThemeExtension>();

    final state = _viewModel.state;
    final selectedItemsNotifier = state.selectedItemsNotifier;

    return CallbackShortcuts(
      bindings: {const SingleActivator(LogicalKeyboardKey.escape): _viewModel.toggleMenu},
      child: Focus(
        autofocus: true,
        child: TapRegion(
          groupId: _viewModel.state.tapRegionGroupId,
          onTapOutside: (_) => _viewModel.toggleMenu(),
          child: ValueListenableBuilder(
            valueListenable: selectedItemsNotifier,
            builder: (_, _, _) {
              return MyoroMenu(
                configuration: _viewModel.state.configuration.menuConfiguration.copyWith(
                  itemBuilder: (T item) => _viewModel.menuItemBuilder(context, item),
                  border: _viewModel.state.configuration.menuTypeEnum.isModal ? null : themeExtension.menuBorder,
                  borderRadius: _viewModel.state.configuration.menuTypeEnum.isModal
                      ? null
                      : themeExtension.menuBorderRadius,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _addShowingMenuControllerListener() {
    if (_viewModel.state.configuration.menuTypeEnum.isModal) {
      _viewModel.state.showingMenuNotifier.addListener(_showingMenuNotifierListener);
    }
  }

  void _removeShowingMenuControllerListener() {
    if (_viewModel.state.configuration.menuTypeEnum.isModal) {
      _viewModel.state.showingMenuNotifier.removeListener(_showingMenuNotifierListener);
    }
  }

  void _showingMenuNotifierListener() {
    if (!_viewModel.state.showingMenu) context.navigator.pop();
  }
}
