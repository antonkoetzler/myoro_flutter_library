part of 'myoro_card_widget_showcase_bloc.dart';

@immutable
sealed class MyoroCardWidgetShowcaseEvent {
  const MyoroCardWidgetShowcaseEvent();
}

final class SetTitleEvent extends MyoroCardWidgetShowcaseEvent {
  final String? title;

  const SetTitleEvent(this.title);
}

final class SetTitleTextStyleEvent extends MyoroCardWidgetShowcaseEvent {
  final TextStyle? textStyle;

  const SetTitleTextStyleEvent(this.textStyle);
}

final class SetPaddingEvent extends MyoroCardWidgetShowcaseEvent {
  final double padding;

  const SetPaddingEvent(this.padding);
}

final class SetWidthEvent extends MyoroCardWidgetShowcaseEvent {
  final MyoroCardWidgetShowcaseBlocDimension width;

  const SetWidthEvent(this.width);
}

final class SetHeightEvent extends MyoroCardWidgetShowcaseEvent {
  final MyoroCardWidgetShowcaseBlocDimension height;

  const SetHeightEvent(this.height);
}
