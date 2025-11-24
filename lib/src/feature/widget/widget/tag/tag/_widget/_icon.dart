part of '../widget/myoro_tag.dart';

/// Icon of [MyoroTag].
final class _Icon extends StatelessWidget {
  const _Icon(this._icon);

  final IconData _icon;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroTagThemeExtension>();
    final style = context.watch<MyoroTagStyle>();
    final iconSize = style.iconSize ?? themeExtension.iconSize;
    return Icon(_icon, size: iconSize);
  }
}
