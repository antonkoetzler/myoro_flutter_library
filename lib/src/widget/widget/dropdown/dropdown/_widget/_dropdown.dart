part of '../myoro_dropdown.dart';

/// Merge point for both dropdowns where the shared logic begins.
final class _Dropdown<T, C extends _C<T>> extends StatefulWidget {
  const _Dropdown(this._createViewModel, this._viewModel);

  /// If the view model was created locally.
  final bool _createViewModel;

  /// View model.
  final MyoroDropdownViewModel<T, C> _viewModel;

  @override
  State<_Dropdown<T, C>> createState() => _DropdownState<T, C>();
}

final class _DropdownState<T, C extends _C<T>> extends State<_Dropdown<T, C>> {
  bool get _createViewModel => widget._createViewModel;
  MyoroDropdownViewModel<T, C> get _viewModel => widget._viewModel;

  @override
  void initState() {
    super.initState();
    _addShowingMenuControllerListener();
  }

  @override
  void didUpdateWidget(covariant _Dropdown<T, C> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _addShowingMenuControllerListener();
  }

  @override
  void dispose() {
    _removeShowingMenuControllerListener();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();

    final child = RepaintBoundary(
      child: ValueListenableBuilder(
        valueListenable: _viewModel.state.inputSizeController,
        builder: (_, Size? inputSize, _) {
          return Row(
            spacing: themeExtension.spacing,
            crossAxisAlignment: inputSize != null ? CrossAxisAlignment.start : CrossAxisAlignment.center,
            children: [
              if (_viewModel.state.configuration.checkboxOnChangedNotNull) ...[
                SizedBox(height: inputSize?.height, child: _Checkbox<T, C>()),
              ],
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(child: _Input<T, C>()),
                    if (_viewModel.state.configuration.menuTypeEnum.isExpanding) ...[
                      ValueListenableBuilder(
                        valueListenable: _viewModel.state.showingMenuController,
                        builder: (_, bool showBasicMenu, _) {
                          return !showBasicMenu ? const SizedBox.shrink() : Flexible(child: _Menu<T, C>());
                        },
                      ),
                    ],
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );

    return _createViewModel ? Provider.value(value: _viewModel, child: child) : child;
  }

  void _addShowingMenuControllerListener() {
    if (!_viewModel.state.configuration.menuTypeEnum.isModal) return;
    _removeShowingMenuControllerListener();
    _viewModel.state.showingMenuController.addListener(_showingMenuControllerListener);
  }

  void _removeShowingMenuControllerListener() {
    if (!_viewModel.state.configuration.menuTypeEnum.isModal) return;
    _viewModel.state.showingMenuController.removeListener(_showingMenuControllerListener);
  }

  void _showingMenuControllerListener() {
    if (!mounted) return;
    if (_viewModel.state.showingMenu) _Menu.showModal(context, _viewModel);
  }
}
