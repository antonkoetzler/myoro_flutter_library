part of '../widget/myoro_dialog_modal.dart';

/// Section of [MyoroDialogModal] in which [_ConfirmButton] and [_CancelButton] are displayed.
final class _FooterButtons extends StatelessWidget {
  const _FooterButtons(
    this._invertButtons,
    this._confirmButtonText,
    this._cancelButtonText,
    this._onConfirm,
    this._onCancel,
  );

  final bool _invertButtons;
  final String _confirmButtonText;
  final String _cancelButtonText;
  final VoidCallback? _onConfirm;
  final VoidCallback? _onCancel;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroDialogModalThemeExtension>();
    final footerButtonsSpacing = themeExtension.footerButtonsSpacing ?? 0;

    final confirmButton = _ConfirmButton(_confirmButtonText, _onConfirm);
    final cancelButton = _CancelButton(_cancelButtonText, _onCancel);

    return Align(
      alignment: Alignment.bottomRight,
      child: IntrinsicWidth(
        child: Row(
          spacing: footerButtonsSpacing,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(child: !_invertButtons ? confirmButton : cancelButton),
            Flexible(child: !_invertButtons ? cancelButton : confirmButton),
          ],
        ),
      ),
    );
  }
}
