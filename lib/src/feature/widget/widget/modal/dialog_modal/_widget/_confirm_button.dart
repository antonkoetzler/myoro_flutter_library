part of '../widget/myoro_dialog_modal.dart';

/// Confirm button of [MyoroDialogModal].
final class _ConfirmButton extends StatelessWidget {
  const _ConfirmButton(this._confirmButtonText, this._onConfirm, this._isLoading);

  final String _confirmButtonText;
  final VoidCallback? _onConfirm;
  final bool _isLoading;

  @override
  Widget build(context) {
    final localization = context.mflLocalization;
    return MyoroIconTextButton(
      onTapUp: (_, _) => _onConfirm?.call(),
      text: _confirmButtonText.isNotEmpty ? _confirmButtonText : localization.myoroDialogModalConfirmButtonText,
      isLoading: _isLoading,
    );
  }
}
