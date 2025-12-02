part of '../bundle/myoro_field_button_bundle.dart';

/// Clear button of a filter button.
final class _ActionButtonsClearButton<T> extends StatelessWidget {
  /// Default constructor.
  const _ActionButtonsClearButton(this._temporarilySelectedItems);

  /// Temporarily selected items.
  final Set<T> _temporarilySelectedItems;

  @override
  Widget build(context) {
    final localization = context.mflLocalization;
    final myoroFilterButtonClearButtonText = localization.myoroFilterButtonClearButtonText;
    final themeExtension = context.resolveThemeExtension<MyoroFilterButtonThemeExtension>();
    final style = context.watch<MyoroFilterButtonStyle>();
    final clearButtonStyle =
        style.clearButtonStyle ?? themeExtension.clearButtonStyle ?? MyoroIconTextButton.styleDefaultValue;

    final viewModel = context.read<MyoroFilterButtonViewModel<T>>();
    final onClear = viewModel.onClear;
    final state = viewModel.state;
    final clearButtonText = state.clearButtonText;

    final text = clearButtonText.isNotEmpty ? clearButtonText : myoroFilterButtonClearButtonText;

    return _ActionButton(
      style: clearButtonStyle,
      text: text,
      onTapUp: _temporarilySelectedItems.isNotEmpty ? onClear : null,
    );
  }
}
