part of '../bundle/myoro_menu_bundle.dart';

/// Dialog text for when there is an error or no items to display in the [MyoroMenu].
final class _DialogText extends StatelessWidget {
  final String _text;

  const _DialogText(this._text);

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroMenuThemeExtension>();
    final dialogTextLoaderPadding = themeExtension.dialogTextLoaderPadding ?? EdgeInsets.zero;

    return Center(
      child: Padding(
        padding: dialogTextLoaderPadding,
        child: Text(_text, style: context.resolveThemeExtension<MyoroMenuThemeExtension>().dialogTextStyle),
      ),
    );
  }
}
