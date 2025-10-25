part of '../myoro_indexed_stack_widget_showcase_screen.dart';

/// Generic button.
final class _Button extends StatelessWidget {
  const _Button(this._text, this._onTapUp);

  final String _text;
  final VoidCallback? _onTapUp;

  @override
  Widget build(context) {
    return IntrinsicWidth(
      child: MyoroIconTextButton(
        textConfiguration: MyoroTextConfiguration(text: _text),
        onTapUp: _onTapUp != null ? (_) => _onTapUp() : null,
        style: const MyoroIconTextButtonStyle().bordered(context),
      ),
    );
  }
}
