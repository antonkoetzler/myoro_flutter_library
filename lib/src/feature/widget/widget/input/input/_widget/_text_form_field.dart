part of '../myoro_input.dart';

/// Core input of [MyoroInput].
final class _TextFormField extends StatelessWidget {
  const _TextFormField();

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final style = context.watch<MyoroInputStyle>();
    final clearTextButtonIcon = style.clearTextButtonIcon ?? themeExtension.clearTextButtonIcon;
    final textStyle = style.inputTextStyle ?? themeExtension.inputTextStyle;
    final contentPadding = style.contentPadding ?? themeExtension.contentPadding;
    final primaryColor = style.primaryColor ?? themeExtension.primaryColor ?? MyoroColors.transparent;

    final viewModel = context.read<MyoroInputViewModel>();
    final state = viewModel.state;
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
    final controller = state.controller;
    final formatter = state.formatter;
    final enabled = state.enabled;
    final onTap = configuration.onTap;
    final inputKey = configuration.inputKey;

    final border = style.border ?? themeExtension.border ?? configuration.inputStyle.getBorder(context);

    // Get the border radius from the border to apply it to the background
    final borderRadius = border is OutlineInputBorder ? border.borderRadius : null;

    return DecoratedBox(
      decoration: BoxDecoration(color: primaryColor, borderRadius: borderRadius),
      child: ValueListenableBuilder(
        valueListenable: state.showClearTextButtonNotifier,
        builder: (_, showClearTextButton, _) {
          showClearTextButton = clearTextButtonIcon != null && showClearTextButton && configuration.showClearTextButton;

          return Stack(
            children: [
              TextFormField(
                key: inputKey,
                ignorePointers: false,
                enabled: enabled,
                readOnly: readOnly,
                autofocus: autofocus,
                style: textStyle?.withColor(
                  textStyle.color!.withValues(
                    alpha: enabled ? 1 : (style.disabledOpacity ?? themeExtension.disabledOpacity),
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
                  suffixIcon: showClearTextButton ? const _ClearTextButton() : null,
                ),
                textAlign: textAlign,
                cursorHeight: style.cursorHeight ?? themeExtension.cursorHeight,
                validator: (_) => validation?.call(controller.text),
                inputFormatters: [?formatter],
                onFieldSubmitted: onFieldSubmitted,
                onChanged: onChanged,
                focusNode: focusNode,
                controller: controller,
              ),
            ],
          );
        },
      ),
    );
  }
}
