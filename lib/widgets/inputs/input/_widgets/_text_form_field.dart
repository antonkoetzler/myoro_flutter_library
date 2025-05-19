part of '../myoro_input.dart';

/// Core input of [MyoroInput].
final class _TextFormField extends StatelessWidget {
  final MyoroInputViewModel _viewModel;
  TextEditingController get _controller => _viewModel._controller;
  MyoroInputConfiguration get _configuration => _viewModel._configuration;
  MyoroInputFormatter? get _formatter => _viewModel._formatter;
  bool get _enabled => _viewModel._enabledNotifier.value;
  ValueNotifier<bool> get _showClearTextButtonNotifier => _viewModel._showClearTextButtonNotifier;

  const _TextFormField(this._viewModel);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final border = _configuration.getBorder(context);
    final textStyle = _configuration.inputTextStyle ?? themeExtension.inputTextStyle;

    return Container(
      decoration: BoxDecoration(color: themeExtension.primaryColor, borderRadius: themeExtension.borderRadius),
      child: ValueListenableBuilder(
        valueListenable: _showClearTextButtonNotifier,
        builder: (_, bool showClearTextButton, __) {
          return TextFormField(
            // So the checkbox prefix may be clicked
            ignorePointers: false,
            enabled: _enabled,
            readOnly: _configuration.readOnly ?? false,
            autofocus: _configuration.autofocus ?? false,
            style: textStyle.withColor(
              textStyle.color!.withValues(alpha: _enabled ? 1 : themeExtension.disabledOpacity),
            ),
            decoration: InputDecoration(
              floatingLabelBehavior: themeExtension.labelBehavior,
              label: _configuration.label != null ? _Label(_configuration) : null,
              hintText: _configuration.placeholder,
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
              contentPadding: _configuration.contentPadding,
              suffixIcon:
                  showClearTextButton
                      ? _ClearTextButton(() {
                        _formatter == null ? _controller.clear() : _controller.text = _formatter!.initialText;
                        _configuration.onChanged?.call(_controller.text);
                        _configuration.onCleared?.call();
                      })
                      : null,
            ),
            textAlign: _configuration.textAlign,
            cursorHeight: themeExtension.cursorHeight,
            validator: (_) => _configuration.validation?.call(_controller.text),
            inputFormatters: _formatter != null ? [_formatter!] : null,
            onFieldSubmitted: _configuration.onFieldSubmitted,
            onChanged: _configuration.onChanged,
            focusNode: _configuration.focusNode,
            controller: _controller,
          );
        },
      ),
    );
  }
}
