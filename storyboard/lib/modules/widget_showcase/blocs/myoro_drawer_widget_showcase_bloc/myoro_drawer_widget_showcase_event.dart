part of 'myoro_drawer_widget_showcase_bloc.dart';

@immutable
sealed class MyoroDrawerWidgetShowcaseEvent {
  const MyoroDrawerWidgetShowcaseEvent();
}

final class SetTitleEvent extends MyoroDrawerWidgetShowcaseEvent {
  final String? title;

  const SetTitleEvent([this.title]);
}

final class SetTitleTextStyleEvent extends MyoroDrawerWidgetShowcaseEvent {
  final TextStyle? textStyle;

  const SetTitleTextStyleEvent([this.textStyle]);
}

final class SetShowCloseButtonEvent extends MyoroDrawerWidgetShowcaseEvent {
  final bool showCloseButton;

  const SetShowCloseButtonEvent(this.showCloseButton);
}

final class SetBarrierDismissableEvent extends MyoroDrawerWidgetShowcaseEvent {
  final bool barrierDismissable;

  const SetBarrierDismissableEvent(this.barrierDismissable);
}
