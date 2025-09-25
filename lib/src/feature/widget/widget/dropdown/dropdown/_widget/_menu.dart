part of '../bundle/myoro_dropdown_bundle.dart';

/// [MyoroMenu] responsible for acting as the dropdown menu.
final class _Menu<T, V extends _ViewModelType<T>> extends StatefulWidget {
  /// Shows a [MyoroModel] when [MyoroDropdownConfiguration.menuTypeEnum] is [MyoroDropdownMenuTypeEnum.modal].
  static void showModal<T, V extends _ViewModelType<T>>(BuildContext context, V viewModel) {
    final style = context.read<MyoroDropdownStyle>();

    MyoroModal.showModal(
      context,
      configuration: const MyoroModalConfiguration(barrierDismissable: false),
      child: MultiProvider(
        providers: [
          InheritedProvider.value(value: viewModel),
          InheritedProvider.value(value: style),
        ],
        child: Center(
          child: Scrollbar(
            controller: viewModel.state.menuScrollController,
            thumbVisibility: true,
            child: SingleChildScrollView(controller: viewModel.state.menuScrollController, child: _Menu<T, V>()),
          ),
        ),
      ),
    );
  }

  const _Menu();

  @override
  State<_Menu<T, V>> createState() => _MenuState<T, V>();
}

final class _MenuState<T, V extends _ViewModelType<T>> extends State<_Menu<T, V>> {
  late final _viewModel = context.read<V>();

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
    return CallbackShortcuts(
      bindings: {const SingleActivator(LogicalKeyboardKey.escape): _viewModel.toggleMenu},
      child: Focus(
        autofocus: true,
        child: TapRegion(
          groupId: _viewModel.state.tapRegionGroupId,
          onTapOutside: (_) => _viewModel.toggleMenu(),
          child: _viewModel.menuWidget(context),
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
