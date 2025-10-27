part of '../widget/myoro_menu.dart';

/// Dialog text for when there is an error or no items to display in the [MyoroMenu].
final class _DialogText extends StatelessWidget {
  const _DialogText(this._text);

  final String _text;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final style = context.watch<MyoroMenuStyle>();
    final dialogTextLoaderPadding =
        style.dialogTextLoaderPadding ?? themeExtension.dialogTextLoaderPadding ?? EdgeInsets.zero;

    return Center(
      child: Padding(
        padding: dialogTextLoaderPadding,
        child: Text(_text, style: style.dialogTextStyle ?? themeExtension.dialogTextStyle),
      ),
    );
  }
}
