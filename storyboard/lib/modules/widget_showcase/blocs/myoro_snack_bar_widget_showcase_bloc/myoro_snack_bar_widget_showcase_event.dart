part of 'myoro_snack_bar_widget_showcase_bloc.dart';

@immutable
sealed class MyoroSnackBarWidgetShowcaseEvent {
  const MyoroSnackBarWidgetShowcaseEvent();
}

final class SetSnackBarTypeEvent extends MyoroSnackBarWidgetShowcaseEvent {
  final MyoroSnackBarTypeEnum snackBarType;

  const SetSnackBarTypeEvent(this.snackBarType);
}

final class SetShowCloseButtonEvent extends MyoroSnackBarWidgetShowcaseEvent {
  final bool showCloseButton;

  const SetShowCloseButtonEvent(this.showCloseButton);
}

final class SetMessageEvent extends MyoroSnackBarWidgetShowcaseEvent {
  final String message;

  const SetMessageEvent([this.message = '']);
}

final class SetChildEnabledEvent extends MyoroSnackBarWidgetShowcaseEvent {
  final bool childEnabled;

  const SetChildEnabledEvent(this.childEnabled);
}
