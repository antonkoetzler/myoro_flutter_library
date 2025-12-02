part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// [MyoroInput] of the selection dropdown.
class _Input<T, V extends _ViewModel<T>> extends StatelessWidget {
  const _Input();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroDropdownThemeExtension>();
    final style = context.watch<MyoroDropdownStyle>();
    final textAlign = style.textAlign ?? themeExtension.textAlign ?? MyoroInput.textAlignDefaultValue;
    final inputTextStyle = style.inputTextStyle ?? themeExtension.inputTextStyle;
    final contentPadding = style.contentPadding ?? themeExtension.contentPadding;

    final viewModel = context.read<V>();
    final state = viewModel.state;
    final inputKey = state.inputKey;
    final enabled = state.enabled;
    final label = state.label;
    final onTap = viewModel.onTap;
    final canShowClearTextButton = switch (state) {
      MyoroMultiSelectionDropdownState<T>() => true,
      MyoroSingleSelectionDropdownState<T>() => state.allowDeselection,
    };

    return MyoroInput(
      style: MyoroInputStyle(inputTextStyle: inputTextStyle, contentPadding: contentPadding),
      label: label,
      inputKey: inputKey,
      controller: state.inputController,
      enabled: enabled,
      enableInteractiveSelection: false,
      readOnly: true,
      onTap: onTap,
      textAlign: textAlign,
      canShowClearTextButton: canShowClearTextButton,
    );
  }
}
