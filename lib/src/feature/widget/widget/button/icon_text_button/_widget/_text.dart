part of '../widget/myoro_icon_text_button.dart';

/// Text of the [MyoroIconTextButton].
final class _Text extends StatelessWidget {
  /// Default constructor.
  const _Text(this._text, this._tapStatusEnum);

  /// Text.
  final String _text;

  /// Tap status.
  final MyoroTapStatusEnum _tapStatusEnum;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroIconTextButtonThemeExtension>();
    final style = context.watch<MyoroIconTextButtonStyle>();
    final contentColor =
        style.contentColorBuilder(_tapStatusEnum) ?? themeExtension.contentColorBuilder(_tapStatusEnum);
    final maxLines = style.textStyle?.maxLines ?? themeExtension.textStyle?.maxLines;
    final overflow = style.textStyle?.overflow ?? themeExtension.textStyle?.overflow;
    final alignment = style.textStyle?.alignment ?? themeExtension.textStyle?.alignment;
    final textStyle = style.textStyle?.style ?? themeExtension.textStyle?.style;

    return Expanded(
      child: IntrinsicHeight(
        child: Text(
          _text,
          maxLines: maxLines,
          overflow: overflow,
          textAlign: alignment,
          style: contentColor != null ? textStyle?.withColor(contentColor) : textStyle,
        ),
      ),
    );
  }
}
