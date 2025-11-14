part of '../widget/myoro_field.dart';

/// Horizontal layout of [MyoroField].
final class _HorizontalLayout extends StatelessWidget {
  /// Default constructor.
  const _HorizontalLayout(this._label, this._labelConfiguration, this._data, this._dataConfiguration);

  /// Label.
  final String _label;

  /// Label configuration.
  final MyoroTextConfiguration? _labelConfiguration;

  /// Data.
  final String _data;

  /// Data configuration.
  final MyoroTextConfiguration? _dataConfiguration;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFieldThemeExtension>();
    final style = context.watch<MyoroFieldStyle>();
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: spacing,
      children: [
        _Label(_label, _labelConfiguration),
        Flexible(child: _Data(_data, _dataConfiguration)),
      ],
    );
  }
}
