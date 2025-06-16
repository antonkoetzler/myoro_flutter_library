part of '../myoro_modal.dart';

/// Title of the [MyoroModal].
final class _Title extends StatelessWidget {
  final String _title;

  const _Title(this._title);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();

    return Padding(
      padding: const EdgeInsets.only(
        // Used to align [_Title] with [_CloseButton].
        left: 8,
      ),
      child: Text(_title, style: themeExtension.titleTextStyle, maxLines: 1, overflow: TextOverflow.ellipsis),
    );
  }
}
