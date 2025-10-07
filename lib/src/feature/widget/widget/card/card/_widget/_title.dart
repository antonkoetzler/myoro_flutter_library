part of '../myoro_card.dart';

/// Title of the [MyoroCard].
final class _Title extends StatelessWidget {
  const _Title(this._title);

  final String _title;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCardThemeExtension>();
    final style = context.watch<MyoroCardStyle>();
    final titleTextStyle = style.titleTextStyle ?? themeExtension.titleTextStyle;
    return Text(_title, style: titleTextStyle);
  }
}
