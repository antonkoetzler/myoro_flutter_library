part of '../myoro_input.dart';

/// Core input of [MyoroInput].
final class _TextFormField extends StatelessWidget {
  const _TextFormField(this._configuration, this._enabled);

  final MyoroInputConfiguration _configuration;
  final bool _enabled;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final style = context.watch<MyoroInputStyle>();
    final clearTextButtonIcon = style.clearTextButtonIcon ?? themeExtension.clearTextButtonIcon;
    final textStyle = style.inputTextStyle ?? themeExtension.inputTextStyle;
    final contentPadding = style.contentPadding ?? themeExtension.contentPadding;
    final primaryColor = style.primaryColor ?? themeExtension.primaryColor ?? MyoroColors.transparent;
    final suffixIconConstraints =
        style.suffixIconConstraints ??
        themeExtension.suffixIconConstraints ??
        const BoxConstraints(minWidth: 0, minHeight: 0);

    final viewModel = context.watch<MyoroInputViewModel>();
    final state = viewModel.state;
    final obscureTextController = state.obscureTextController;
    final readOnly = _configuration.readOnly;
    final autofocus = _configuration.autofocus;
    final placeholder = _configuration.placeholder;
    final label = _configuration.label;
    final textAlign = _configuration.textAlign;
    final validation = _configuration.validation;
    final onFieldSubmitted = _configuration.onFieldSubmitted;
    final onChanged = _configuration.onChanged;
    final focusNode = _configuration.focusNode;
    final controller = state.controller;
    final formatter = state.formatter;
    final onTap = _configuration.onTap;
    final inputKey = _configuration.inputKey;
    final showObscureTextButton = _configuration.showObscureTextButton;

    final border = style.border ?? themeExtension.border ?? _configuration.inputStyle.getBorder(context);

    // Get the border radius from the border to apply it to the background
    final borderRadius = border is OutlineInputBorder ? border.borderRadius : null;

    return DecoratedBox(
      decoration: BoxDecoration(color: primaryColor, borderRadius: borderRadius),
      child: ValueListenableBuilder(
        valueListenable: state.showClearTextButtonController,
        builder: (_, showClearTextButton, _) {
          showClearTextButton =
              showClearTextButton && clearTextButtonIcon != null && _configuration.showClearTextButton;

          return Stack(
            children: [
              ValueListenableBuilder(
                valueListenable: obscureTextController,
                builder: (_, obscureText, _) {
                  return TextFormField(
                    key: inputKey,
                    ignorePointers: false,
                    enabled: _enabled,
                    readOnly: readOnly,
                    autofocus: autofocus,
                    obscureText: obscureText,
                    style: textStyle?.withColor(
                      textStyle.color!.withValues(
                        alpha: _enabled ? 1 : (style.disabledOpacity ?? themeExtension.disabledOpacity),
                      ),
                    ),
                    onTap: onTap,
                    mouseCursor: onTap != null ? SystemMouseCursors.click : null,
                    decoration: InputDecoration(
                      floatingLabelBehavior: style.labelBehavior ?? themeExtension.labelBehavior,
                      label: label.isNotEmpty ? const _Label() : null,
                      hintText: placeholder.isNotEmpty ? placeholder : null,
                      hintStyle: textStyle?.withColor(
                        textStyle.color!.withValues(alpha: style.disabledOpacity ?? themeExtension.disabledOpacity),
                      ),
                      enabledBorder: border,
                      focusedBorder: border,
                      errorBorder: border?.copyWith(
                        borderSide: border.borderSide.copyWith(
                          color: style.errorBorderColor ?? themeExtension.errorBorderColor,
                        ),
                      ),
                      disabledBorder: border?.copyWith(
                        borderSide: border.borderSide.copyWith(
                          color: border.borderSide.color.withValues(
                            alpha: style.disabledOpacity ?? themeExtension.disabledOpacity,
                          ),
                        ),
                      ),
                      isDense: true,
                      contentPadding: contentPadding,
                      suffixIconConstraints: suffixIconConstraints,
                      suffixIcon: showObscureTextButton
                          ? _ObscureTextButton(obscureText)
                          : showClearTextButton
                          ? const _ClearTextButton()
                          : null,
                    ),
                    textAlign: textAlign,
                    cursorHeight: style.cursorHeight ?? themeExtension.cursorHeight,
                    validator: (_) => validation?.call(controller.text),
                    inputFormatters: [?formatter],
                    onFieldSubmitted: onFieldSubmitted,
                    onChanged: onChanged,
                    focusNode: focusNode,
                    controller: controller,
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
