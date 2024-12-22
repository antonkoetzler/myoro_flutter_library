part of 'myoro_dialog_modal_widget_showcase_bloc.dart';

const _defaultText = 'Message regarding the action goes here.';

final class MyoroDialogModalWidgetShowcaseState extends Equatable {
  /// [MyoroDialogModal._invertButtons].
  final bool invertButtons;

  /// [MyoroDialogModal._confirmButtonText].
  final String? confirmButtonText;
  final bool confirmButtonTextEnabled;

  /// [MyoroDialogModal._cancelButtonText].
  final String? cancelButtonText;
  final bool cancelButtonTextEnabled;

  /// [MyoroDialogModal._text].
  final String? text;
  final bool textEnabled;

  /// [MyoroDialogModal._textStyle].
  final TextStyle? textStyle;
  final bool textStyleEnabled;

  /// [MyoroDialogModal._child].
  final bool childEnabled;

  const MyoroDialogModalWidgetShowcaseState({
    this.invertButtons = false,
    this.confirmButtonText,
    this.confirmButtonTextEnabled = false,
    this.cancelButtonText,
    this.cancelButtonTextEnabled = false,
    this.text = _defaultText,
    this.textEnabled = true,
    this.textStyle,
    this.textStyleEnabled = false,
    this.childEnabled = false,
  }) : assert(
          (text != null) ^ childEnabled,
          '[MyoroDialogModalWidgetShowcaseState]: [text] must not be null (x)or [childEnabled] must be true.',
        );

  MyoroDialogModalWidgetShowcaseState copyWith({
    bool? invertButtons,
    String? confirmButtonText,
    bool? confirmButtonTextEnabled,
    String? cancelButtonText,
    bool? cancelButtonTextEnabled,
    String? text,
    bool? textEnabled,
    TextStyle? textStyle,
    bool? textStyleEnabled,
    bool? childEnabled,
  }) {
    confirmButtonTextEnabled = confirmButtonTextEnabled ?? this.confirmButtonTextEnabled;
    cancelButtonTextEnabled = cancelButtonTextEnabled ?? this.cancelButtonTextEnabled;
    textEnabled = textEnabled ?? this.textEnabled;
    textStyleEnabled = textStyleEnabled ?? this.textStyleEnabled;
    childEnabled = childEnabled ?? this.childEnabled;

    // [MyoroDialogModal.text] (x)or [MyoroDialogModal.child] are not provided.
    if (!textEnabled && !childEnabled) {
      if (this.textEnabled) {
        childEnabled = true;
      } else if (this.childEnabled) {
        text = _defaultText;
        textEnabled = true;
      }
    }

    // Both [MyoroDialogModal.text] & [MyoroDialogModal.child] are provided.
    if (textEnabled && childEnabled) {
      if (this.textEnabled) {
        textEnabled = false;
      } else if (this.childEnabled) {
        childEnabled = false;
      }
    }

    return MyoroDialogModalWidgetShowcaseState(
      invertButtons: invertButtons ?? this.invertButtons,
      confirmButtonText: confirmButtonTextEnabled ? (confirmButtonText ?? this.confirmButtonText) : null,
      confirmButtonTextEnabled: confirmButtonTextEnabled,
      cancelButtonText: cancelButtonTextEnabled ? (cancelButtonText ?? this.cancelButtonText) : null,
      cancelButtonTextEnabled: cancelButtonTextEnabled,
      text: textEnabled ? (text ?? this.text) : null,
      textEnabled: textEnabled,
      textStyle: textStyleEnabled && !childEnabled ? (textStyle ?? this.textStyle) : null,
      textStyleEnabled: textStyleEnabled && !childEnabled,
      childEnabled: childEnabled,
    );
  }

  @override
  String toString() => ''
      'MyoroDialogModalWidgetShowcaseState(\n'
      '  invertButtons: $invertButtons,\n'
      '  confirmButtonText: $confirmButtonText,\n'
      '  confirmButtonTextEnabled: $confirmButtonTextEnabled,\n'
      '  cancelButtonText: $cancelButtonText,\n'
      '  cancelButtonTextEnabled: $cancelButtonTextEnabled,\n'
      '  text: $text,\n'
      '  textEnabled: $textEnabled,\n'
      '  textStyle: $textStyle,\n'
      '  textStyleEnabled: $textStyleEnabled,\n'
      '  childEnabled: $childEnabled,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      invertButtons,
      confirmButtonText,
      confirmButtonTextEnabled,
      cancelButtonText,
      cancelButtonTextEnabled,
      text,
      textEnabled,
      textStyle,
      textStyleEnabled,
      childEnabled,
    ];
  }
}
