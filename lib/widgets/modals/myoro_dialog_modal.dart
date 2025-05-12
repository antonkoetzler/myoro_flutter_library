import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A simple yes/no dialog modal.
class MyoroDialogModal extends StatelessWidget {
  /// Configuration.
  final MyoroDialogModalConfiguration configuration;

  const MyoroDialogModal._(this.configuration);

  static Future<void> show(
    BuildContext context, {
    MyoroModalConfiguration modalConfiguration = const MyoroModalConfiguration(),
    required MyoroDialogModalConfiguration dialogModalConfiguration,
  }) async {
    await MyoroModal.show(
      context,
      configuration: modalConfiguration,
      child: MyoroDialogModal._(dialogModalConfiguration),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();

    return Column(
      spacing: themeExtension.spacing,
      children: [Expanded(child: _Message(configuration)), _FooterButtons(configuration)],
    );
  }
}

final class _Message extends StatelessWidget {
  final MyoroDialogModalConfiguration _configuration;

  const _Message(this._configuration);

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDialogModalThemeExtension>();

    if (_configuration.text.isNotEmpty) {
      return Text(_configuration.text, style: _configuration.textStyle ?? themeExtension.textStyle);
    }

    if (_configuration.child != null) {
      return _configuration.child!;
    }

    throw AssertionError(
      '[MyoroDialogModal._Message.build]: [_text] (x)or [_child] must always not be null',
    );
  }
}

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

final class _ConfirmButton extends StatelessWidget {
  final MyoroDialogModalConfiguration _configuration;

  const _ConfirmButton(this._configuration);

  @override
  Widget build(BuildContext context) {
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(
          onTapUp: (_) => _configuration.onConfirm?.call(),
        ),
        textConfiguration: MyoroIconTextButtonTextConfiguration(
          text: _configuration.confirmButtonText ?? 'Confirm',
        ),
      ),
    );
  }
}

final class _CancelButton extends StatelessWidget {
  final MyoroDialogModalConfiguration _configuration;

  const _CancelButton(this._configuration);

  @override
  Widget build(BuildContext context) {
    return MyoroIconTextButton(
      configuration: MyoroIconTextButtonConfiguration(
        buttonConfiguration: MyoroButtonConfiguration(onTapUp: (_) => _onTapUp(context)),
        textConfiguration: MyoroIconTextButtonTextConfiguration(
          text: _configuration.cancelButtonText ?? 'Cancel',
        ),
      ),
    );
  }

  void _onTapUp(BuildContext context) {
    _configuration.onCancel?.call();
    Navigator.of(context).pop();
  }
}
