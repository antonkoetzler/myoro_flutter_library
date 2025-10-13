part of '../myoro_input.dart';

/// Wrapper for the [ValueListenableBuilder] in [_MyoroInputState].
final class _Wrapper extends StatelessWidget {
  const _Wrapper(this._configuration, this._enabled);

  final MyoroInputConfiguration _configuration;
  final bool _enabled;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final style = context.watch<MyoroInputStyle>();
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;

    final checkboxOnChanged = _configuration.checkboxOnChanged;
    final suffix = _configuration.suffix;

    return Row(
      spacing: spacing,
      children: [
        if (checkboxOnChanged != null) _Checkbox(_enabled),
        Expanded(child: _TextFormField(_configuration, _enabled)),
        if (suffix != null) suffix,
      ],
    );
  }
}
