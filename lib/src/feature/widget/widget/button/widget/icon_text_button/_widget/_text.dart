part of '../myoro_icon_text_button.dart';

/// Text of the [MyoroIconTextButton].
final class _Text extends StatelessWidget {
  final MyoroTapStatusEnum _tapStatusEnum;
  final MyoroIconTextButtonConfigurationContentColorBuilder? _contentColorBuilder;
  final MyoroTextConfiguration _textConfiguration;

  const _Text(this._tapStatusEnum, this._contentColorBuilder, this._textConfiguration);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();

    final textStyle = _textConfiguration.style ?? themeExtension.textStyle;
    final contentColor =
        _contentColorBuilder?.call(_tapStatusEnum) ??
        MyoroButtonStyleEnum.primary.contentColorBuilder(context, _tapStatusEnum);

    return Expanded(
      child: Text(
        _textConfiguration.text,
        maxLines: _textConfiguration.maxLines,
        overflow: _textConfiguration.overflow,
        textAlign: _textConfiguration.alignment,
        style: contentColor != null ? textStyle?.withColor(contentColor) : textStyle,
      ),
    );
  }
}
