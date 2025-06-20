part of '../myoro_dropdown.dart';

/// [MyoroMenu] responsible for acting as the dropdown menu.
final class _Menu<T, C extends _C<T>> extends StatefulWidget {
  /// Shows a [MyoroModel] when [MyoroDropdownConfiguration.menuTypeEnum] is [MyoroDropdownMenuTypeEnum.modal].
  static void showModal<T, C extends _C<T>>(BuildContext context, MyoroDropdownViewModel<T, C> viewModel) {
    MyoroModal.show(
      context,
      configuration: const MyoroModalConfiguration(barrierDismissable: false),
      child: InheritedProvider.value(
        value: viewModel,
        child: CustomScrollView(slivers: [SliverToBoxAdapter(child: _Menu<T, C>())]),
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
    if (_viewModel.state.configuration.menuTypeEnum.isModal) {
      _viewModel.state.showBasicMenuController.addListener(_showBasicMenuControllerListener);
    }
  }

  @override
  void dispose() {
    if (_viewModel.state.configuration.menuTypeEnum.isModal) {
      _viewModel.state.showBasicMenuController.removeListener(_showBasicMenuControllerListener);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();
    final configuration = _viewModel.state.configuration;
    final menuConfiguration = configuration.menuConfiguration;
    final selectedItemsController = _viewModel.controller.selectedItemsController;
    final tapRegionGroupId = _viewModel.state.tapRegionGroupId;

    return CallbackShortcuts(
      bindings: {const SingleActivator(LogicalKeyboardKey.escape): _viewModel.toggleMenu},
      child: Focus(
        autofocus: true,
        child: TapRegion(
          groupId: tapRegionGroupId,
          onTapOutside: (_) => _viewModel.toggleMenu(),
          child: ValueListenableBuilder(
            valueListenable: selectedItemsController,
            builder: (_, _, _) {
              return MyoroMenu(
                configuration: menuConfiguration.copyWith(
                  itemBuilder: (T item) => _viewModel.menuItemBuilder(context, item),
                  border: _viewModel.state.configuration.menuTypeEnum.isModal ? null : themeExtension.menuBorder,
                  borderRadius: themeExtension.menuBorderRadius,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _showBasicMenuControllerListener() {
    if (!_viewModel.state.showBasicMenu) context.navigator.pop();
  }
}
