part of '../myoro_card.dart';

/// Title of the [MyoroCard].
final class _Title extends StatelessWidget {
  const _Title(this._style, this._title);

  final MyoroCardStyle _style;
  final String _title;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroCardThemeExtension>();

    final titleTextStyle = _style.titleTextStyle ?? themeExtension.textStyle;

    return Text(_title, style: titleTextStyle);
  }
}
