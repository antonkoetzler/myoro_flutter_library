part of '../myoro_modal.dart';

/// Header area of the [MyoroModal].
final class _Header extends StatelessWidget {
  const _Header(this._title, this._showCloseButton);

  final String _title;
  final bool _showCloseButton;

  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (_title.isNotEmpty) Expanded(child: _Title(_title)),
        if (_showCloseButton) const _CloseButton(),
      ],
    );
  }
}
