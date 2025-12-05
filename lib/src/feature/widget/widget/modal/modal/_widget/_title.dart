part of '../myoro_modal.dart';

/// Title of the [MyoroModal].
final class _Title extends StatelessWidget {
  final String _title;

  const _Title(this._title);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();
    final style = context.watch<MyoroModalStyle>();
    final titleTextStyle = style.titleTextStyle ?? themeExtension.titleTextStyle;
    return Text(_title, style: titleTextStyle, maxLines: 1, overflow: TextOverflow.ellipsis);
  }
}
