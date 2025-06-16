part of '../myoro_dropdown.dart';

/// Merge point for both dropdowns where the shared logic begins.
final class _Dropdown<T, C extends _C<T>> extends StatelessWidget {
  /// View model.
  final MyoroDropdownViewModel<T, C> _viewModel;

  const _Dropdown(this._viewModel);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();

    return Provider.value(
      value: _viewModel,
      child: RepaintBoundary(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Row(
                spacing: themeExtension.spacing,
                children: [
                  if (_viewModel.state.configuration.checkboxOnChangedNotNull) _Checkbox<T, C>(),
                  Expanded(child: _Input<T, C>()),
                ],
              ),
            ),
            if (_viewModel.state.configuration.menuTypeEnum.isExpanding && _viewModel.state.expandingMenu) ...[
              _Menu<T, C>(),
            ],
          ],
        ),
      ),
    );
  }
}
