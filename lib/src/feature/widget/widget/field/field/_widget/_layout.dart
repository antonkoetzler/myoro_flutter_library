part of '../widget/myoro_field.dart';

/// Generic layout of [MyoroField].
final class _Layout extends StatelessWidget {
  /// Default constructor.
  const _Layout(this._child);

  /// Child.
  final Widget _child;

  /// Build function.
  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroFieldThemeExtension>();
    final style = context.watch<MyoroFieldStyle>();
    final decoration = style.decoration ?? themeExtension.decoration ?? const BoxDecoration();
    final contentPadding = style.contentPadding ?? themeExtension.contentPadding ?? const EdgeInsets.all(0);
    return Container(decoration: decoration, padding: contentPadding, child: _child);
  }
}
