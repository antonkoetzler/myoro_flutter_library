part of '../bundle/myoro_field_button_bundle.dart';

/// Apply button of a filter button.
final class _ActionButtonsApplyButton<T> extends StatelessWidget {
  const _ActionButtonsApplyButton();

  @override
  Widget build(context) {
    final localization = context.mflLocalization;
    final myoroFilterButtonApplyButtonText = localization.myoroFilterButtonApplyButtonText;

    final themeExtension = context.resolveThemeExtension<MyoroFilterButtonThemeExtension>();
    final style = context.watch<MyoroFilterButtonStyle>();
    final applyButtonStyle =
        style.applyButtonStyle ?? themeExtension.applyButtonStyle ?? MyoroIconTextButton.styleDefaultValue;

    final viewModel = context.read<MyoroFilterButtonViewModel<T>>();
    final onApply = viewModel.onApply;
    final state = viewModel.state;
    final applyButtonText = state.applyButtonText;

    final text = applyButtonText.isNotEmpty ? applyButtonText : myoroFilterButtonApplyButtonText;

    return _ActionButton(style: applyButtonStyle, text: text, onTapUp: onApply);
  }
}
