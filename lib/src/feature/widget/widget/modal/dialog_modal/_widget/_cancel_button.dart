part of '../widget/myoro_dialog_modal.dart';

/// Cancel button of [MyoroDialogModal].
final class _CancelButton extends StatelessWidget {
  const _CancelButton(this._cancelButtonText, this._onCancel);

  final String _cancelButtonText;
  final VoidCallback? _onCancel;

  @override
  Widget build(context) {
    return MyoroIconTextButton(
      onTapUp: (_) => _onTapUp(context),
      textConfiguration: MyoroTextConfiguration(text: _cancelButtonText.isNotEmpty ? _cancelButtonText : 'Cancel'),
    );
  }

  void _onTapUp(BuildContext context) {
    _onCancel?.call();
    context.navigator.pop();
  }
}
