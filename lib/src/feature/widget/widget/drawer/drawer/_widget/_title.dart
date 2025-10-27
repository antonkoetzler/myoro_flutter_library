part of '../widget/myoro_drawer.dart';

/// Title of the [MyoroDrawer].
final class _Title extends StatelessWidget {
  const _Title(this._title);

  final String _title;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroDrawerThemeExtension>();
    final style = context.watch<MyoroDrawerStyle>();
    final titleTextStyle = style.titleTextStyle ?? themeExtension.titleTextStyle;
    return Text(_title, style: titleTextStyle);
  }
}
