part of '../myoro_input.dart';

/// Core input of [MyoroInput].
final class _TextFormField extends StatelessWidget {
  final MyoroInputController _controller;

  const _TextFormField(this._controller);

  @override
  Widget build(BuildContext context) {
    final configuration = _controller.configuration;
    final formatter = _controller.formatter;
    final inputController = _controller.inputController;
    final enabled = _controller.enabled;
    final showClearTextButtonController = _controller.showClearTextButtonController;

    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final border = configuration.getBorder(context);
    final textStyle = configuration.inputTextStyle ?? themeExtension.inputTextStyle;

    return Container(
      decoration: BoxDecoration(color: themeExtension.primaryColor, borderRadius: themeExtension.borderRadius),
      child: ValueListenableBuilder(
        valueListenable: showClearTextButtonController,
        builder: (_, bool showClearTextButton, __) {
          return TextFormField(
            // So the checkbox prefix may be clicked
            ignorePointers: false,
            enabled: enabled,
            readOnly: configuration.readOnly ?? false,
            autofocus: configuration.autofocus ?? false,
            style: textStyle.withColor(
              textStyle.color!.withValues(alpha: enabled ? 1 : themeExtension.disabledOpacity),
            ),
            decoration: InputDecoration(
              floatingLabelBehavior: themeExtension.labelBehavior,
              label: configuration.label != null ? _Label(_controller) : null,
              hintText: configuration.placeholder,
              hintStyle: textStyle.withColor(textStyle.color!.withValues(alpha: themeExtension.disabledOpacity)),
              enabledBorder: border,
              focusedBorder: border,
              errorBorder: border.copyWith(
                borderSide: border.borderSide.copyWith(color: themeExtension.errorBorderColor),
              ),
              disabledBorder: border.copyWith(
                borderSide: border.borderSide.copyWith(
                  color: border.borderSide.color.withValues(alpha: themeExtension.disabledOpacity),
                ),
              ),
              isDense: themeExtension.isDense,
              contentPadding: configuration.contentPadding,
              suffixIcon: showClearTextButton ? _ClearTextButton(_controller) : null,
            ),
            textAlign: configuration.textAlign,
            cursorHeight: themeExtension.cursorHeight,
            validator: (_) => configuration.validation?.call(inputController.text),
            inputFormatters: formatter != null ? [formatter] : null,
            onFieldSubmitted: configuration.onFieldSubmitted,
            onChanged: configuration.onChanged,
            focusNode: configuration.focusNode,
            controller: inputController,
          );
        },
      ),
    );
  }
}
