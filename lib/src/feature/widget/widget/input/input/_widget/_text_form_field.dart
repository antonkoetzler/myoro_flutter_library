part of '../myoro_input.dart';

/// Core input of [MyoroInput].
final class _TextFormField extends StatelessWidget {
  const _TextFormField(this._viewModel);

  final MyoroInputViewModel _viewModel;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final style = context.read<MyoroInputStyle>();
    final clearTextButtonIcon = style.clearTextButtonIcon ?? themeExtension.clearTextButtonIcon;
    final textStyle = style.inputTextStyle ?? themeExtension.inputTextStyle;
    final contentPadding = style.contentPadding ?? themeExtension.contentPadding;
    final primaryColor = style.primaryColor ?? themeExtension.primaryColor ?? MyoroColors.transparent;

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
    final controller = state.controller;
    final formatter = state.formatter;
    final enabled = state.enabled;

    final border = style.border ?? themeExtension.border ?? configuration.inputStyle.getBorder(context);

    Widget buildTextFormField([bool showClearTextButton = false]) {
      return TextFormField(
        ignorePointers: false,
        enabled: enabled,
        readOnly: readOnly,
        autofocus: autofocus,
        style: textStyle?.withColor(
          textStyle.color!.withValues(
            alpha: _viewModel.state.enabled ? 1 : (style.disabledOpacity ?? themeExtension.disabledOpacity),
          ),
        ),
        decoration: InputDecoration(
          floatingLabelBehavior: style.labelBehavior ?? themeExtension.labelBehavior,
          label: label.isNotEmpty ? _Label(_viewModel) : null,
          hintText: placeholder.isNotEmpty ? placeholder : null,
          hintStyle: textStyle?.withColor(
            textStyle.color!.withValues(alpha: style.disabledOpacity ?? themeExtension.disabledOpacity),
          ),
          enabledBorder: border,
          focusedBorder: border,
          errorBorder: border?.copyWith(
            borderSide: border.borderSide.copyWith(color: style.errorBorderColor ?? themeExtension.errorBorderColor),
          ),
          disabledBorder: border?.copyWith(
            borderSide: border.borderSide.copyWith(
              color: border.borderSide.color.withValues(alpha: style.disabledOpacity ?? themeExtension.disabledOpacity),
            ),
          ),
          isDense: true,
          contentPadding: contentPadding,
          suffixIcon: showClearTextButton ? _ClearTextButton(_viewModel) : null,
        ),
        textAlign: textAlign,
        cursorHeight: style.cursorHeight ?? themeExtension.cursorHeight,
        validator: (_) => validation?.call(controller.text),
        inputFormatters: formatter != null ? [_viewModel.state.formatter!] : null,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        focusNode: focusNode,
        controller: controller,
      );
    }

    // Get the border radius from the border to apply it to the background
    final borderRadius = border is OutlineInputBorder ? border.borderRadius : null;

    return DecoratedBox(
      decoration: BoxDecoration(color: primaryColor, borderRadius: borderRadius),
      child: configuration.showClearTextButton
          ? ValueListenableBuilder(
              valueListenable: state.showClearTextButtonNotifier,
              builder: (_, showClearTextButton, _) {
                showClearTextButton = clearTextButtonIcon != null && showClearTextButton;
                return buildTextFormField(showClearTextButton);
              },
            )
          : buildTextFormField(),
    );
  }
}
