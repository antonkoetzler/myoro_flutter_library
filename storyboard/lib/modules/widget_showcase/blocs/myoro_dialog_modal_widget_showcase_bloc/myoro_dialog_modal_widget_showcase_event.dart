part of 'myoro_dialog_modal_widget_showcase_bloc.dart';

@immutable
sealed class MyoroDialogModalWidgetShowcaseEvent {
  const MyoroDialogModalWidgetShowcaseEvent();
}

final class SetInvertButtonsEvent extends MyoroDialogModalWidgetShowcaseEvent {
  final bool invertButtons;

  const SetInvertButtonsEvent(this.invertButtons);
}

final class SetConfirmButtonTextEvent extends MyoroDialogModalWidgetShowcaseEvent {
  final String? confirmButtonText;

  const SetConfirmButtonTextEvent([this.confirmButtonText]);
}

final class SetCancelButtonTextEvent extends MyoroDialogModalWidgetShowcaseEvent {
  final String? cancelButtonText;

  const SetCancelButtonTextEvent([this.cancelButtonText]);
}

final class SetTextEvent extends MyoroDialogModalWidgetShowcaseEvent {
  final String text;

  const SetTextEvent([this.text = '']);
}

final class SetTextStyleEvent extends MyoroDialogModalWidgetShowcaseEvent {
  final TextStyle? textStyle;

  const SetTextStyleEvent([this.textStyle]);
}

final class SetChildEvent extends MyoroDialogModalWidgetShowcaseEvent {
  final bool childEnabled;

  const SetChildEvent([
    this.childEnabled = MyoroDialogModalWidgetShowcaseState.childEnabledDefaultValue,
  ]);
}
