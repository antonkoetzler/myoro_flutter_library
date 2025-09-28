part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Merge point for both dropdowns where the shared logic begins.
final class _Dropdown<T, V extends _ViewModelType<T>> extends StatelessWidget {
  const _Dropdown(this._viewModel, this._style);

  /// View model.
  final V _viewModel;

  /// Style.
  final MyoroSelectionDropdownStyle _style;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroSelectionDropdownThemeExtension>();
    final spacing = _style.spacing ?? themeExtension.spacing ?? 0;

    return MultiProvider(
      providers: [
        Provider.value(value: _viewModel),
        InheritedProvider.value(value: _style),
      ],
      child: RepaintBoundary(
        child: Row(
          spacing: spacing,
          children: [
            if (_viewModel.state.configuration.checkboxOnChangedNotNull) _Checkbox<T, V>(),
            Expanded(child: _Input<T, V>()),
          ],
        ),
      ),
    );
  }
}
