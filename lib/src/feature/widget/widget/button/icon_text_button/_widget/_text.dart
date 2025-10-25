part of '../widget/myoro_icon_text_button.dart';

/// Text of the [MyoroIconTextButton].
final class _Text extends StatelessWidget {
  const _Text(this._tapStatusEnum, this._textConfiguration);

  final MyoroTapStatusEnum _tapStatusEnum;
  final MyoroTextConfiguration _textConfiguration;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();
    final style = context.watch<MyoroIconTextButtonStyle>();
    final contentColor =
        style.contentColorBuilder(_tapStatusEnum) ?? themeExtension.contentColorBuilder(_tapStatusEnum);

    final text = _textConfiguration.text;
    final maxLines = _textConfiguration.maxLines;
    final overflow = _textConfiguration.overflow;
    final alignment = _textConfiguration.alignment;
    final textStyle = _textConfiguration.style ?? themeExtension.textStyle;

    return Expanded(
      child: IntrinsicHeight(
        child: Text(
          text,
          maxLines: maxLines,
          overflow: overflow,
          textAlign: alignment,
          style: contentColor != null ? textStyle?.withColor(contentColor) : textStyle,
        ),
      ),
    );
  }
}
