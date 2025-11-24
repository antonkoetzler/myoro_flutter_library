part of '../bundle/myoro_field_button_bundle.dart';

/// Cancel button of a filter button.
final class _ActionButtonsCancelButton<T> extends StatelessWidget {
  const _ActionButtonsCancelButton();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFilterButtonThemeExtension>();
    final style = context.watch<MyoroFilterButtonStyle>();
    final closeButtonStyle =
        style.closeButtonStyle ?? themeExtension.closeButtonStyle ?? MyoroIconTextButton.styleDefaultValue;

    final viewModel = context.read<MyoroFilterButtonViewModel<T>>();
    final onCancel = viewModel.onCancel;
    final state = viewModel.state;
    final closeButtonIcon = state.closeButtonIcon;

    return _ActionButton(style: closeButtonStyle, icon: closeButtonIcon, onTapUp: onCancel);
  }
}
