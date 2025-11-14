part of '../widget/myoro_field.dart';

/// Label of [MyoroField].
final class _Label extends StatelessWidget {
  /// Default constructor.
  const _Label(this._text, this._configuration);

  /// Label.
  final String _text;

  /// Text.
  final MyoroTextConfiguration? _configuration;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFieldThemeExtension>();
    final style = context.watch<MyoroFieldStyle>();
    final labelTextStyle = _configuration?.style ?? style.labelTextStyle ?? themeExtension.labelTextStyle;
    final maxLines = _configuration?.maxLines;
    final overflow = _configuration?.overflow;
    final alignment = _configuration?.alignment;
    return Text(_text, maxLines: maxLines, overflow: overflow, textAlign: alignment, style: labelTextStyle);
  }
}
