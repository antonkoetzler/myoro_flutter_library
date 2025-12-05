import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_cancel_button.dart';
part '../_widget/_confirm_button.dart';
part '../_widget/_footer_buttons.dart';
part '../_widget/_message.dart';

/// A simple yes/no dialog modal.
///
/// Also serves as a modal to execute basic requests.
class MyoroDialogModal<T> extends StatelessWidget {
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

  static Future<void> show<T>(
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
    FutureOr<T?> Function()? onConfirm,
    ValueChanged<T?>? onSuccess,
    ValueChanged<String>? onError,
    VoidCallback? onCancel,
    String message = kMyoroEmptyString,
    MyoroDialogModalBuilder<T>? builder,
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
        child: MyoroDialogModal._(
          invertButtons,
          confirmButtonText,
          cancelButtonText,
          onConfirm,
          onSuccess,
          onError,
          onCancel,
          message,
          builder,
        ),
      ),
    );
  }

  /// Internal constructor.
  const MyoroDialogModal._(
    this._invertButtons,
    this._confirmButtonText,
    this._cancelButtonText,
    this._onConfirm,
    this._onSuccess,
    this._onError,
    this._onCancel,
    this._message,
    this._builder,
  );

  /// Whether or not to invert the buttons in [_FooterButtons].
  final bool _invertButtons;

  /// Text of [_ConfirmButton].
  final String _confirmButtonText;

  /// Text of [_CancelButton].
  final String _cancelButtonText;

  /// Function executed when [_ConfirmButton] is pressed.
  final FutureOr<T?> Function()? _onConfirm;

  /// Function executed when the request is successful.
  final ValueChanged<T?>? _onSuccess;

  /// Function executed when the request is error.
  final ValueChanged<String>? _onError;

  /// Function executed when [_CancelButton] is pressed.
  final VoidCallback? _onCancel;

  /// Simple text option of the [MyoroDialogModal].
  final String _message;

  /// Custom [Widget] option of the [MyoroDialogModal].
  final MyoroDialogModalBuilder<T>? _builder;

  @override
  Widget build(BuildContext context) {
    final modalThemeExtension = context.resolveThemeExtension<MyoroModalThemeExtension>();
    final style = context.watch<MyoroDialogModalStyle>();
    final spacing = style.spacing ?? modalThemeExtension.spacing ?? 0;

    return MyoroForm<T>(
      request: _onConfirm,
      onSuccess: _onSuccess,
      onError: _onError,
      builder: (request, controller) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          spacing: spacing,
          children: [
            Flexible(child: _Message(_message, _builder, request)),
            _FooterButtons<T>(controller, request, _invertButtons, _confirmButtonText, _cancelButtonText, _onCancel),
          ],
        );
      },
    );
  }
}
