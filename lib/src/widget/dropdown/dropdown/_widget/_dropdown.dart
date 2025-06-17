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
    if (_viewModel.state.configuration.menuTypeEnum.isModal) {
      _viewModel.state.showBasicMenuController.addListener(() {
        if (!mounted) return;
        _viewModel.state.showBasicMenu ? _Menu.showModal(context) : context.navigator.pop();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();
    final displayExpandingMenu =
        widget._viewModel.state.configuration.menuTypeEnum.isExpanding && widget._viewModel.state.showBasicMenu;

    return Provider.value(
      value: widget._viewModel,
      child: RepaintBoundary(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Row(
                spacing: themeExtension.spacing,
                children: [
                  if (widget._viewModel.state.configuration.checkboxOnChangedNotNull) _Checkbox<T, C>(),
                  Expanded(child: _Input<T, C>()),
                ],
              ),
            ),
            if (displayExpandingMenu) _Menu<T, C>(),
          ],
        ),
      ),
    );
  }
}
