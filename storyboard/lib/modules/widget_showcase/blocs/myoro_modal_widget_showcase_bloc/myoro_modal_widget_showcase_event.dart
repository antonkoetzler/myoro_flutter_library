part of 'myoro_modal_widget_showcase_bloc.dart';

@immutable
sealed class MyoroModalWidgetShowcaseEvent {
  const MyoroModalWidgetShowcaseEvent();
}

final class SetBarrierDismissableEvent extends MyoroModalWidgetShowcaseEvent {
  final bool barrierDismissable;

  const SetBarrierDismissableEvent(this.barrierDismissable);
}

final class SetMinWidthEvent extends MyoroModalWidgetShowcaseEvent {
  final double? minWidth;

  const SetMinWidthEvent([this.minWidth]);
}

final class SetMaxWidthEvent extends MyoroModalWidgetShowcaseEvent {
  final double? maxWidth;

  const SetMaxWidthEvent([this.maxWidth]);
}

final class SetMinHeightEvent extends MyoroModalWidgetShowcaseEvent {
  final double? minHeight;

  const SetMinHeightEvent([this.minHeight]);
}

final class SetMaxHeightEvent extends MyoroModalWidgetShowcaseEvent {
  final double? maxHeight;

  const SetMaxHeightEvent([this.maxHeight]);
}

final class SetTitleEvent extends MyoroModalWidgetShowcaseEvent {
  final String? title;

  const SetTitleEvent([this.title]);
}

final class SetShowCloseButtonEvent extends MyoroModalWidgetShowcaseEvent {
  final bool showCloseButton;

  const SetShowCloseButtonEvent(this.showCloseButton);
}
