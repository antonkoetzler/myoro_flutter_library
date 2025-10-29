import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_cancel_button.dart';
part '../_widget/_confirm_button.dart';
part '../_widget/_footer_buttons.dart';
part '../_widget/_message.dart';

/// A simple yes/no dialog modal.
class MyoroDialogModal extends StatelessWidget {
  /// Default value of is bottom sheet.
  static const isBottomSheetDefaultValue = false;

  /// Default value of use root navigator.
  static const useRootNavigatorDefaultValue = MyoroModal.useRootNavigatorDefaultValue;

  /// Default value of barrier dismissable.
  static const barrierDismissableDefaultValue = MyoroModal.barrierDismissableDefaultValue;

  /// Default value of [_style].
  static const styleDefaultValue = MyoroDialogModalStyle();

  /// Default value of [_title].
  static const titleDefaultValue = kMyoroEmptyString;

  /// Default value of [_showCloseButton].
  static const showCloseButtonDefaultValue = true;

  static Future<void> show(
    BuildContext context, {

    MyoroDialogModalStyle style = styleDefaultValue,
    bool isBottomSheet = isBottomSheetDefaultValue,
    bool useRootNavigator = useRootNavigatorDefaultValue,
    bool barrierDismissable = barrierDismissableDefaultValue,
    String title = titleDefaultValue,
    bool showCloseButton = showCloseButtonDefaultValue,

    bool invertButtons = false,
    String confirmButtonText = kMyoroEmptyString,
    String cancelButtonText = kMyoroEmptyString,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
    String text = kMyoroEmptyString,
    Widget? child,
  }) async {
    await MyoroModal.show(
      context,
      isBottomSheet: isBottomSheet,
      useRootNavigator: useRootNavigator,
      barrierDismissable: barrierDismissable,
      style: style,
      title: title,
      showCloseButton: showCloseButton,
      child: InheritedProvider.value(
        value: style,
        child: MyoroDialogModal._(invertButtons, confirmButtonText, cancelButtonText, onConfirm, onCancel, text, child),
      ),
    );
  }

  const MyoroDialogModal._(
    this._invertButtons,
    this._confirmButtonText,
    this._cancelButtonText,
    this._onConfirm,
    this._onCancel,
    this._text,
    this._child,
  );

  /// Whether or not to invert the buttons in [_FooterButtons].
  final bool _invertButtons;

  /// Text of [_ConfirmButton].
  final String _confirmButtonText;

  /// Text of [_CancelButton].
  final String _cancelButtonText;

  /// Function executed when [_ConfirmButton] is pressed.
  final VoidCallback? _onConfirm;

  /// Function executed when [_CancelButton] is pressed.
  final VoidCallback? _onCancel;

  /// Simple text option of the [MyoroDialogModal].
  final String _text;

  /// Custom [Widget] option of the [MyoroDialogModal].
  final Widget? _child;

  @override
  Widget build(BuildContext context) {
    final modalThemeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();
    final style = context.watch<MyoroDialogModalStyle>();
    final spacing = style.spacing ?? modalThemeExtension.spacing ?? 0;

    return Column(
      spacing: spacing,
      children: [
        Expanded(child: _Message(_text, _child)),
        _FooterButtons(_invertButtons, _confirmButtonText, _cancelButtonText, _onConfirm, _onCancel),
      ],
    );
  }
}
