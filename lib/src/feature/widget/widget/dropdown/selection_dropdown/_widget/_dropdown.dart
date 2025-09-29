part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Merge point for both dropdowns where the shared logic begins.
final class _Dropdown<T, V extends _ViewModelType<T>> extends StatefulWidget {
  const _Dropdown(this._viewModel, this._style);

  /// View model.
  final V _viewModel;

  /// Style.
  final MyoroSelectionDropdownStyle _style;

  @override
  State<_Dropdown<T, V>> createState() => _DropdownState<T, V>();
}

final class _DropdownState<T, V extends _ViewModelType<T>> extends State<_Dropdown<T, V>> {
  V get _viewModel => widget._viewModel;

  BuildContext? _context;

  MyoroSelectionDropdownStyle get _style {
    return widget._style;
  }

  @override
  void initState() {
    super.initState();
    _addShowingMenuControllerListener();
  }

  @override
  void didUpdateWidget(covariant _Dropdown<T, V> oldWidget) {
    super.didUpdateWidget(oldWidget);
    _addShowingMenuControllerListener();
  }

  @override
  void dispose() {
    _removeShowingMenuControllerListener();
    super.dispose();
  }

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSelectionDropdownThemeExtension>();
    final spacing = _style.spacing ?? themeExtension.spacing ?? 0;

    return MultiProvider(
      providers: [
        Provider.value(value: _viewModel),
        InheritedProvider.value(value: _style),
      ],
      child: Builder(
        builder: (context) {
          _context = context;

          return RepaintBoundary(
            child: ValueListenableBuilder(
              valueListenable: _viewModel.state.inputSizeNotifier,
              builder: (_, Size? inputSize, _) => Row(
                spacing: spacing,
                crossAxisAlignment: inputSize != null ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                children: [
                  if (_viewModel.state.configuration.checkboxOnChangedNotNull) ...[
                    SizedBox(height: inputSize?.height, child: _Checkbox<T, V>()),
                  ],
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(child: _Input<T, V>()),
                        if (_viewModel.state.configuration.menuTypeEnum.isExpanding) ...[
                          ValueListenableBuilder(
                            valueListenable: _viewModel.state.showingMenuNotifier,
                            builder: (_, bool showBasicMenu, _) =>
                                !showBasicMenu ? const SizedBox.shrink() : Flexible(child: _Menu<T, V>()),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _addShowingMenuControllerListener() {
    if (!_viewModel.state.configuration.menuTypeEnum.isModal) return;
    _removeShowingMenuControllerListener();
    _viewModel.state.showingMenuNotifier.addListener(_showingMenuNotifierListener);
  }

  void _removeShowingMenuControllerListener() {
    if (!_viewModel.state.configuration.menuTypeEnum.isModal) return;
    _viewModel.state.showingMenuNotifier.removeListener(_showingMenuNotifierListener);
  }

  void _showingMenuNotifierListener() {
    if (!mounted) return;
    if (_viewModel.state.showingMenu) _Menu.showModal(_context!, _viewModel);
  }
}
