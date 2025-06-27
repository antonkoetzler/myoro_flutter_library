part of '../myoro_input.dart';

/// Core input of [MyoroInput].
final class _TextFormField extends StatelessWidget {
  final MyoroInputViewModel _viewModel;

  const _TextFormField(this._viewModel);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();

    final border = _viewModel.state.configuration.getBorder(context);
    final textStyle = _viewModel.state.configuration.inputTextStyle ?? themeExtension.inputTextStyle;

    return ColoredBox(
      color: themeExtension.primaryColor,
      child: ValueListenableBuilder(
        key: ValueKey(border),
        valueListenable: _viewModel.state.showClearTextButtonController,
        builder: (_, bool showClearTextButton, _) {
          return TextFormField(
            // So the checkbox prefix may be clicked
            ignorePointers: false,
            enabled: _viewModel.state.enabled,
            readOnly: _viewModel.state.configuration.readOnly,
            autofocus: _viewModel.state.configuration.autofocus,
            style: textStyle.withColor(
              textStyle.color!.withValues(alpha: _viewModel.state.enabled ? 1 : themeExtension.disabledOpacity),
            ),
            decoration: InputDecoration(
              floatingLabelBehavior: themeExtension.labelBehavior,
              label: _viewModel.state.configuration.label.isNotEmpty ? _Label(_viewModel) : null,
              hintText:
                  _viewModel.state.configuration.placeholder.isNotEmpty
                      ? _viewModel.state.configuration.placeholder
                      : null,
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
              isDense: true,
              contentPadding: _viewModel.state.configuration.contentPadding ?? themeExtension.contentPadding,
              suffixIcon: showClearTextButton ? _ClearTextButton(_viewModel) : null,
            ),
            textAlign: _viewModel.state.configuration.textAlign,
            cursorHeight: themeExtension.cursorHeight,
            validator: (_) => _viewModel.state.configuration.validation?.call(_viewModel.state.inputController.text),
            inputFormatters: _viewModel.state.formatter != null ? [_viewModel.state.formatter!] : null,
            onFieldSubmitted: _viewModel.state.configuration.onFieldSubmitted,
            onChanged: _viewModel.state.configuration.onChanged,
            focusNode: _viewModel.state.configuration.focusNode,
            controller: _viewModel.state.inputController,
          );
        },
      ),
    );
  }
}
