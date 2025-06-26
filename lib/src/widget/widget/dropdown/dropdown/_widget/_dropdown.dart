part of '../myoro_dropdown.dart';

/// Merge point for both dropdowns where the shared logic begins.
final class _Dropdown<T, C extends _C<T>> extends StatefulWidget {
  const _Dropdown(this._viewModel);

  /// View model.
  final MyoroDropdownViewModel<T, C> _viewModel;

  @override
  State<_Dropdown<T, C>> createState() => _DropdownState<T, C>();
}

final class _DropdownState<T, C extends _C<T>> extends State<_Dropdown<T, C>> {
  MyoroDropdownViewModel<T, C> get _viewModel => widget._viewModel;

  @override
  void initState() {
    super.initState();
    _setupModalShowBasicMenuControllerListener();
  }

  @override
  void didUpdateWidget(covariant _Dropdown<T, C> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _setupModalShowBasicMenuControllerListener();
  }

  @override
  void dispose() {
    if (_viewModel.state.configuration.menuTypeEnum.isModal) {
      _removeShowBasicMenuControllerListener();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();

    return Provider.value(
      value: _viewModel,
      child: RepaintBoundary(
        child: Row(
          spacing: themeExtension.spacing,
          children: [
            if (_viewModel.state.configuration.checkboxOnChangedNotNull) _Checkbox<T, C>(),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(child: _Input<T, C>()),
                  if (_viewModel.state.configuration.menuTypeEnum.isExpanding) ...[
                    ValueListenableBuilder(
                      valueListenable: _viewModel.state.showBasicMenuController,
                      builder: (_, bool showBasicMenu, _) {
                        return !showBasicMenu
                            ? const SizedBox.shrink()
                            : Flexible(
                              child: Scrollbar(
                                controller: _viewModel.state.menuScrollController,
                                child: SingleChildScrollView(
                                  controller: _viewModel.state.menuScrollController,
                                  child: _Menu<T, C>(),
                                ),
                              ),
                            );
                      },
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _setupModalShowBasicMenuControllerListener() {
    if (_viewModel.state.configuration.menuTypeEnum.isModal) {
      _removeShowBasicMenuControllerListener();
      _viewModel.state.showBasicMenuController.addListener(_showBasicMenuControllerListener);
    }
  }

  void _removeShowBasicMenuControllerListener() {
    _viewModel.state.showBasicMenuController.removeListener(_showBasicMenuControllerListener);
  }

  void _showBasicMenuControllerListener() {
    if (!mounted) return;
    if (_viewModel.state.showBasicMenu) _Menu.showModal(context, _viewModel);
  }
}
