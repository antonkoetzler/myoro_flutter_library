part of '../myoro_modal.dart';

/// Title of the [MyoroModal].
final class _Title extends StatelessWidget {
  final String _title;

  const _Title(this._title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        // Used to align [_Title] with [_CloseButton].
        left: 8,
      ),
      child: Text(_title, style: context.resolveThemeExtension<MyoroModalThemeExtension>().titleTextStyle),
    );
  }
}
