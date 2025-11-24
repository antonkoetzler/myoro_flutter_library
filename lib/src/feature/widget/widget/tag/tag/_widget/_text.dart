part of '../widget/myoro_tag.dart';

/// Text of [MyoroTag].
final class _Text extends StatelessWidget {
  const _Text(this._text);

  final String _text;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroTagThemeExtension>();
    final style = context.watch<MyoroTagStyle>();
    final textStyle = style.textStyle?.style ?? themeExtension.textStyle?.style;
    final maxLines = style.textStyle?.maxLines ?? themeExtension.textStyle?.maxLines;
    final overflow = style.textStyle?.overflow ?? themeExtension.textStyle?.overflow;
    final alignment = style.textStyle?.alignment ?? themeExtension.textStyle?.alignment;
    return Text(_text, maxLines: maxLines, overflow: overflow, textAlign: alignment, style: textStyle);
  }
}
