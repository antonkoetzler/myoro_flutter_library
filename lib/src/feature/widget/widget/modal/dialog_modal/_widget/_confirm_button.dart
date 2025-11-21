part of '../widget/myoro_dialog_modal.dart';

/// Confirm button of [MyoroDialogModal].
final class _ConfirmButton extends StatelessWidget {
  const _ConfirmButton(this._confirmButtonText, this._onConfirm);

  final String _confirmButtonText;
  final VoidCallback? _onConfirm;

  @override
  Widget build(context) {
    final localization = context.localization;
    return MyoroIconTextButton(
      onTapUp: (_, _) => _onConfirm?.call(),
      text: _confirmButtonText.isNotEmpty ? _confirmButtonText : localization.myoroDialogModalConfirmButtonText,
    );
  }
}
