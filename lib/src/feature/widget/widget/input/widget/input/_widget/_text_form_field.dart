part of '../myoro_input.dart';

/// Core input of [MyoroInput].
final class _TextFormField extends StatelessWidget {
  const _TextFormField(this._viewModel);

  final MyoroInputViewModel _viewModel;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final clearTextButtonIcon = themeExtension.clearTextButtonIcon;
    final textStyle = themeExtension.inputTextStyle;
    final contentPadding = themeExtension.contentPadding;
    final primaryColor = themeExtension.primaryColor ?? MyoroColors.transparent;

    final state = _viewModel.state;
    final configuration = state.configuration;
    final readOnly = configuration.readOnly;
    final autofocus = configuration.autofocus;
    final placeholder = configuration.placeholder;
    final label = configuration.label;
    final textAlign = configuration.textAlign;
    final validation = configuration.validation;
    final onFieldSubmitted = configuration.onFieldSubmitted;
    final onChanged = configuration.onChanged;
    final focusNode = configuration.focusNode;
    final inputController = state.inputController;
    final formatter = state.formatter;
    final enabled = state.enabled;
    final inputKey = configuration.inputKey;

    final border = themeExtension.border ?? configuration.inputStyle.getBorder(context);

    return ColoredBox(
      color: primaryColor,
      child: ValueListenableBuilder(
        // Used to not apply the default animation when switching borders during rebuilds.
        valueListenable: _viewModel.state.showClearTextButtonController,
        builder: (_, showClearTextButton, _) {
          showClearTextButton = clearTextButtonIcon != null && showClearTextButton;

          return TextFormField(
            key: inputKey,
            // So the checkbox prefix may be clicked
            ignorePointers: false,
            enabled: enabled,
            readOnly: readOnly,
            autofocus: autofocus,
            style: textStyle?.withColor(
              textStyle.color!.withValues(alpha: _viewModel.state.enabled ? 1 : themeExtension.disabledOpacity),
            ),
            decoration: InputDecoration(
              floatingLabelBehavior: themeExtension.labelBehavior,
              label: label.isNotEmpty ? _Label(_viewModel) : null,
              hintText: placeholder.isNotEmpty ? placeholder : null,
              hintStyle: textStyle?.withColor(textStyle.color!.withValues(alpha: themeExtension.disabledOpacity)),
              enabledBorder: border,
              focusedBorder: border,
              errorBorder: border?.copyWith(
                borderSide: border.borderSide.copyWith(color: themeExtension.errorBorderColor),
              ),
              disabledBorder: border?.copyWith(
                borderSide: border.borderSide.copyWith(
                  color: border.borderSide.color.withValues(alpha: themeExtension.disabledOpacity),
                ),
              ),
              isDense: true,
              contentPadding: contentPadding ?? themeExtension.contentPadding,
              suffixIcon: showClearTextButton ? _ClearTextButton(_viewModel) : null,
            ),
            textAlign: textAlign,
            cursorHeight: themeExtension.cursorHeight,
            validator: (_) => validation?.call(inputController.text),
            inputFormatters: formatter != null ? [_viewModel.state.formatter!] : null,
            onFieldSubmitted: onFieldSubmitted,
            onChanged: onChanged,
            focusNode: focusNode,
            controller: inputController,
          );
        },
      ),
    );
  }
}
