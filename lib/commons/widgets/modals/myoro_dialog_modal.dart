import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A simple yes/no dialog modal.
final class MyoroDialogModal extends StatelessWidget {
  /// Whether or not to invert the buttons in [_FooterButtons].
  final bool? invertButtons;

  /// Text of [_ConfirmButton].
  final String? confirmButtonText;

  /// Text of [_CancelButton].
  final String? cancelButtonText;

  /// Function executed when [_ConfirmButton] is pressed.
  final VoidCallback? onConfirm;

  /// Function executed when [_CancelButton] is pressed.
  final VoidCallback? onCancel;

  /// Simple text option of the [MyoroDialogModal].
  final String? text;

  /// Text style of [text].
  final TextStyle? textStyle;

  /// Custom [Widget] option of the [MyoroDialogModal].
  final Widget? child;

  const MyoroDialogModal._(
    this.invertButtons,
    this.confirmButtonText,
    this.cancelButtonText,
    this.onConfirm,
    this.onCancel,
    this.text,
    this.textStyle,
    this.child,
  );

  static Future<void> show(
    BuildContext context, {
    MyoroModalConfiguration? configuration,
    bool? invertButtons,
    String? confirmButtonText,
    String? cancelButtonText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    String? text,
    TextStyle? textStyle,
    Widget? child,
  }) async {
    // Assertion of only having a simple [text] or a customized [child].
    assert(
      (text != null) ^ (child != null),
      '[MyoroDialogModal]: [text] (x)or [child] must be provided.',
    );

    await MyoroModal.show(
      context,
      configuration: configuration,
      child: MyoroDialogModal._(
        invertButtons,
        confirmButtonText,
        cancelButtonText,
        onConfirm,
        onCancel,
        text,
        textStyle,
        child,
      ),
    );
  }

  static Finder finder({
    bool? invertButtons,
    bool invertButtonsEnabled = false,
    String? confirmButtonText,
    bool confirmButtonTextEnabled = false,
    String? cancelButtonText,
    bool cancelButtonTextEnabled = false,
    VoidCallback? onConfirm,
    bool onConfirmEnabled = false,
    VoidCallback? onCancel,
    bool onCancelEnabled = false,
    String? text,
    bool textEnabled = false,
    TextStyle? textStyle,
    bool textStyleEnabled = false,
    Widget? child,
    bool childEnabled = false,
  }) {
    return find.byWidgetPredicate(
      (Widget w) =>
          w is MyoroDialogModal &&
          (invertButtonsEnabled ? w.invertButtons == invertButtons : true) &&
          (confirmButtonTextEnabled ? w.confirmButtonText == confirmButtonText : true) &&
          (cancelButtonTextEnabled ? w.cancelButtonText == cancelButtonText : true) &&
          (onConfirmEnabled ? w.onConfirm == onConfirm : true) &&
          (onCancelEnabled ? w.onCancel == onCancel : true) &&
          (textEnabled ? w.text == text : true) &&
          (textStyleEnabled ? w.textStyle == textStyle : true) &&
          (childEnabled ? w.child == child : true),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: _Message(
            text,
            textStyle,
            child,
          ),
        ),
        SizedBox(height: context.resolveThemeExtension<MyoroModalThemeExtension>().spacing),
        _FooterButtons(
          invertButtons ?? false,
          confirmButtonText,
          cancelButtonText,
          onConfirm,
          onCancel,
        ),
      ],
    );
  }
}

final class _Message extends StatelessWidget {
  final String? _text;
  final TextStyle? _textStyle;
  final Widget? _child;

  const _Message(
    this._text,
    this._textStyle,
    this._child,
  );

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroDialogModalThemeExtension>();

    if (_text != null) {
      return Text(
        _text,
        style: _textStyle ?? themeExtension.textStyle,
      );
    }

    if (_child != null) {
      return _child;
    }

    throw AssertionError('[MyoroDialogModal._Message.build]: [_text] (x)or [_child] must always not be null');
  }
}

final class _FooterButtons extends StatelessWidget {
  final bool _invertButtons;
  final String? _confirmButtonText;
  final String? _cancelButtonText;
  final VoidCallback? _onConfirm;
  final VoidCallback? _onCancel;

  const _FooterButtons(
    this._invertButtons,
    this._confirmButtonText,
    this._cancelButtonText,
    this._onConfirm,
    this._onCancel,
  );

  @override
  Widget build(BuildContext context) {
    final confirmButton = _ConfirmButton(_confirmButtonText, _onConfirm);
    final cancelButton = _CancelButton(_cancelButtonText, _onCancel);

    return Align(
      alignment: Alignment.bottomRight,
      child: IntrinsicWidth(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(child: !_invertButtons ? confirmButton : cancelButton),
            SizedBox(width: context.resolveThemeExtension<MyoroDialogModalThemeExtension>().footerButtonsSpacing),
            Flexible(child: !_invertButtons ? cancelButton : confirmButton),
          ],
        ),
      ),
    );
  }
}

final class _ConfirmButton extends StatelessWidget {
  final String? _text;
  final VoidCallback? _onConfirm;

  const _ConfirmButton(this._text, this._onConfirm);

  @override
  Widget build(BuildContext context) {
    return MyoroIconTextHoverButton(
      text: _text ?? 'Confirm',
      onPressed: () => _onConfirm?.call(),
    );
  }
}

final class _CancelButton extends StatelessWidget {
  final String? _text;
  final VoidCallback? _onCancel;

  const _CancelButton(this._text, this._onCancel);

  @override
  Widget build(BuildContext context) {
    return MyoroIconTextHoverButton(
      text: _text ?? 'Cancel',
      onPressed: () {
        _onCancel?.call();
        Navigator.of(context).pop();
      },
    );
  }
}
