part of 'myoro_dialog_modal_widget_showcase_bloc.dart';

final class MyoroDialogModalWidgetShowcaseState extends Equatable {
  static const invertButtonsDefaultValue = false;
  static const textDefaultValue = 'Message regarding the action goes here.';
  static const childEnabledDefaultValue = false;

  /// [MyoroDialogModal._invertButtons].
  final bool invertButtons;

  /// [MyoroDialogModal._confirmButtonText].
  final String? confirmButtonText;

  /// [MyoroDialogModal._cancelButtonText].
  final String? cancelButtonText;

  /// [MyoroDialogModal._text].
  final String text;

  /// [MyoroDialogModal._textStyle].
  final TextStyle? textStyle;

  /// [MyoroDialogModal._child].
  final bool childEnabled;

  const MyoroDialogModalWidgetShowcaseState({
    this.invertButtons = invertButtonsDefaultValue,
    this.confirmButtonText,
    this.cancelButtonText,
    this.text = textDefaultValue,
    this.textStyle,
    this.childEnabled = childEnabledDefaultValue,
  }) : assert(
         (text.length > 0) ^ childEnabled,
         '[MyoroDialogModalWidgetShowcaseState]: [text] must not be null (x)or [childEnabled] must be true.',
       );

  MyoroDialogModalWidgetShowcaseState copyWith({
    bool? invertButtons,
    String? confirmButtonText,
    bool confirmButtonTextProvided = true,
    String? cancelButtonText,
    bool cancelButtonTextProvided = true,
    String? text,
    TextStyle? textStyle,
    bool textStyleProvided = true,
    bool? childEnabled,
  }) {
    return MyoroDialogModalWidgetShowcaseState(
      invertButtons: invertButtons ?? this.invertButtons,
      confirmButtonText:
          confirmButtonTextProvided ? (confirmButtonText ?? this.confirmButtonText) : null,
      cancelButtonText:
          cancelButtonTextProvided ? (cancelButtonText ?? this.cancelButtonText) : null,
      text: text ?? this.text,
      textStyle: textStyle ?? this.textStyle,
      childEnabled: childEnabled ?? this.childEnabled,
    );
  }

  @override
  String toString() =>
      'MyoroDialogModalWidgetShowcaseState(\n'
      '  invertButtons: $invertButtons,\n'
      '  confirmButtonText: $confirmButtonText,\n'
      '  cancelButtonText: $cancelButtonText,\n'
      '  text: $text,\n'
      '  textStyle: $textStyle,\n'
      '  childEnabled: $childEnabled,\n'
      ');';

  @override
  List<Object?> get props {
    return [invertButtons, confirmButtonText, cancelButtonText, text, textStyle, childEnabled];
  }
}
