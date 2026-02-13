part of '../myoro_input_widget_showcase_screen.dart';

/// Actual [MyoroInput] of [MyoroInputWidgetShowcaseScreen].
final class _Input extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final viewModel = context.read<MyoroInputWidgetShowcaseScreenViewModel>();
    final state = viewModel.state;
    final validation = viewModel.validation;
    final checkboxOnChanged = viewModel.checkboxOnChanged;
    final onFieldSubmitted = viewModel.onFieldSubmitted;
    final onChanged = viewModel.onChanged;
    final onCleared = viewModel.onCleared;

    return MyoroInput(
      style: viewModel.buildStyle(context),
      inputStyle: state.inputStyle,
      textAlign: state.textAlign,
      label: state.label,
      placeholder: state.placeholder,
      suffix: state.suffixEnabled ? const _Suffix() : null,
      enabled: state.enabled,
      readOnly: state.readOnly,
      autofocus: true,
      canShowClearTextButton: state.canShowClearTextButton,
      obscureText: state.obscureText,
      showObscureTextButton: state.showObscureTextButton,
      checkboxOnChanged: state.checkboxOnChangedEnabled
          ? (enabled, text) => checkboxOnChanged(context, enabled, text)
          : null,
      validation: state.validationEnabled ? validation : null,
      onFieldSubmitted: (text) => onFieldSubmitted(context, text),
      onChanged: state.onChangedEnabled ? (text) => onChanged(context, text) : null,
      onCleared: state.onClearedEnabled ? () => onCleared(context) : null,
    );
  }
}
