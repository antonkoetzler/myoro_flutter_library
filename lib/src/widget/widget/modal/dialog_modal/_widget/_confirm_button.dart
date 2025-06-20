part of '../myoro_dialog_modal.dart';

/// Confirm button of [MyoroDialogModal].
final class _ConfirmButton extends StatelessWidget {
  final MyoroDialogModalConfiguration _configuration;

  const _ConfirmButton(this._configuration);

  @override
  Widget build(BuildContext context) {
    final confirmButtonText = _configuration.confirmButtonText;

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) => _configuration.onConfirm?.call()),
        textConfiguration: MyoroTextConfiguration(text: confirmButtonText.isNotEmpty ? confirmButtonText : 'Confirm'),
      ),
    );
  }
}
