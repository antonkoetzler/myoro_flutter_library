part of '../widget/myoro_field.dart';

/// Data of [MyoroField].
final class _Data extends StatelessWidget {
  /// Default constructor.
  const _Data(this._text, this._configuration);

  /// Text.
  final String _text;

  /// Text.
  final MyoroTextConfiguration? _configuration;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFieldThemeExtension>();
    final style = context.watch<MyoroFieldStyle>();
    final dataTextStyle = _configuration?.style ?? style.dataTextStyle ?? themeExtension.dataTextStyle;
    final maxLines = _configuration?.maxLines;
    final overflow = _configuration?.overflow;
    final alignment = _configuration?.alignment;
    return Text(_text, maxLines: maxLines, overflow: overflow, textAlign: alignment, style: dataTextStyle);
  }
}
