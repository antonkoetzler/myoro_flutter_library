part of '../myoro_dropdown.dart';

/// Merge point for both dropdowns where the shared logic begins.
final class _Dropdown<T, C extends _C<T>> extends StatelessWidget {
  /// View model.
  final MyoroDropdownViewModel<T, C> _viewModel;

  const _Dropdown(this._viewModel);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();

    return RepaintBoundary(
      child: Row(
        spacing: themeExtension.spacing,
        children: [
          if (_viewModel.state.configuration.checkboxOnChangedNotNull) _Checkbox(_viewModel),
          Expanded(child: _Input(_viewModel)),
        ],
      ),
    );
  }
}
