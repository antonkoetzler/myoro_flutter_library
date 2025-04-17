part of 'myoro_dialog_modal_widget_showcase_bloc.dart';

const _defaultText = 'Message regarding the action goes here.';

final class MyoroDialogModalWidgetShowcaseState extends Equatable {
  /// [MyoroDialogModal._invertButtons].
  final bool invertButtons;

  /// [MyoroDialogModal._confirmButtonText].
  final String? confirmButtonText;

  /// [MyoroDialogModal._cancelButtonText].
  final String? cancelButtonText;

  /// [MyoroDialogModal._text].
  final String? text;
  final bool textEnabled;

  /// [MyoroDialogModal._textStyle].
  final TextStyle? textStyle;

  /// [MyoroDialogModal._child].
  final bool childEnabled;

  const MyoroDialogModalWidgetShowcaseState({
    this.invertButtons = false,
    this.confirmButtonText,
    this.cancelButtonText,
    this.text = _defaultText,
    this.textEnabled = true,
    this.textStyle,
    this.childEnabled = false,
  }) : assert(
         (text != null) ^ childEnabled,
         '[MyoroDialogModalWidgetShowcaseState]: [text] must not be null (x)or [childEnabled] must be true.',
       );

  MyoroDialogModalWidgetShowcaseState copyWith({
    bool? invertButtons,
    String? confirmButtonText,
    bool confirmButtonTextProvided = true,
    String? cancelButtonText,
    bool cancelButtonTextProvided = true,
    String? text,
    bool? textEnabled,
    TextStyle? textStyle,
    bool textStyleProvided = true,
    bool? childEnabled,
  }) {
    textEnabled = textEnabled ?? this.textEnabled;
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
      confirmButtonText:
          confirmButtonTextProvided
              ? (confirmButtonText ?? this.confirmButtonText)
              : null,
      cancelButtonText:
          cancelButtonTextProvided
              ? (cancelButtonText ?? this.cancelButtonText)
              : null,
      text: textEnabled ? (text ?? this.text) : null,
      textEnabled: textEnabled,
      textStyle:
          textStyleProvided && !childEnabled
              ? (textStyle ?? this.textStyle)
              : null,
      childEnabled: childEnabled,
    );
  }

  @override
  String toString() =>
      'MyoroDialogModalWidgetShowcaseState(\n'
      '  invertButtons: $invertButtons,\n'
      '  confirmButtonText: $confirmButtonText,\n'
      '  cancelButtonText: $cancelButtonText,\n'
      '  text: $text,\n'
      '  textEnabled: $textEnabled,\n'
      '  textStyle: $textStyle,\n'
      '  childEnabled: $childEnabled,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      invertButtons,
      confirmButtonText,
      cancelButtonText,
      text,
      textEnabled,
      textStyle,
      childEnabled,
    ];
  }
}
