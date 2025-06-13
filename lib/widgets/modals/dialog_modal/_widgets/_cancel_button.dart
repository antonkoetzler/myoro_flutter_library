part of '../myoro_dialog_modal.dart';

/// Cancel button of [MyoroDialogModal].
final class _CancelButton extends StatelessWidget {
  final MyoroDialogModalConfiguration _configuration;

  const _CancelButton(this._configuration);

  @override
  Widget build(BuildContext context) {
    final cancelButtonText = _configuration.cancelButtonText;

    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) => _onTapUp(context)),
        textConfiguration: MyoroIconTextButtonTextConfiguration(
          text: cancelButtonText.isNotEmpty ? cancelButtonText : 'Cancel',
        ),
      ),
    );
  }

  void _onTapUp(BuildContext context) {
    _configuration.onCancel?.call();
    context.navigator.pop();
  }
}
