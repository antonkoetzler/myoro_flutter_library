part of '../widget/myoro_dialog_modal.dart';

/// Cancel button of [MyoroDialogModal].
final class _CancelButton extends StatelessWidget {
  const _CancelButton(this._cancelButtonText, this._onCancel);

  final String _cancelButtonText;
  final VoidCallback? _onCancel;

  @override
  Widget build(context) {
    final localization = context.localization;
    return MyoroIconTextButton(
      onTapUp: (context, _) => _onTapUp(context),
      text: _cancelButtonText.isNotEmpty ? _cancelButtonText : localization.myoroDialogModalCancelButtonText,
    );
  }

  void _onTapUp(BuildContext context) {
    _onCancel?.call();
    context.navigator.pop();
  }
}
