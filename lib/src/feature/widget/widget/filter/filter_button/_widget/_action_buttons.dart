part of '../bundle/myoro_field_button_bundle.dart';

/// Action buttons of a filter button.
final class _ActionButtons<T> extends StatelessWidget {
  /// Default constructor.
  const _ActionButtons(this._temporarilySelectedItems);

  /// Temporarily selected items.
  final Set<T> _temporarilySelectedItems;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFilterButtonThemeExtension>();
    final style = context.watch<MyoroFilterButtonStyle>();
    final actionButtonsSpacing = style.actionButtonsSpacing ?? themeExtension.actionButtonsSpacing ?? 0;

    return IntrinsicHeight(
      child: Row(
        spacing: actionButtonsSpacing,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _ActionButtonsCancelButton<T>(),
          Expanded(child: _ActionButtonsClearButton<T>(_temporarilySelectedItems)),
          Expanded(child: _ActionButtonsApplyButton<T>()),
        ],
      ),
    );
  }
}
