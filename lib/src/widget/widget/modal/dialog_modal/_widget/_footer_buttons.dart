part of '../myoro_dialog_modal.dart';

/// Section of [MyoroDialogModal] in which [_ConfirmButton] and [_CancelButton] are displayed.
final class _FooterButtons extends StatelessWidget {
  final MyoroDialogModalConfiguration _configuration;

  const _FooterButtons(this._configuration);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDialogModalThemeExtension>();

    final confirmButton = _ConfirmButton(_configuration);
    final cancelButton = _CancelButton(_configuration);

    return Align(
      alignment: Alignment.bottomRight,
      child: IntrinsicWidth(
        child: Row(
          spacing: themeExtension.footerButtonsSpacing,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(child: !_configuration.invertButtons ? confirmButton : cancelButton),
            Flexible(child: !_configuration.invertButtons ? cancelButton : confirmButton),
          ],
        ),
      ),
    );
  }
}
