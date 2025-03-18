part of 'myoro_icon_text_hover_button_widget_showcase_bloc.dart';

@immutable
sealed class MyoroIconTextHoverButtonWidgetShowcaseEvent {
  const MyoroIconTextHoverButtonWidgetShowcaseEvent();
}

final class SetIconEvent extends MyoroIconTextHoverButtonWidgetShowcaseEvent {
  final IconData? icon;

  const SetIconEvent([this.icon]);
}

final class SetIconSizeEvent
    extends MyoroIconTextHoverButtonWidgetShowcaseEvent {
  final double? iconSize;

  const SetIconSizeEvent([this.iconSize]);
}

final class SetTextEvent extends MyoroIconTextHoverButtonWidgetShowcaseEvent {
  final String text;

  const SetTextEvent([this.text = '']);
}

final class SetTextStyleEvent
    extends MyoroIconTextHoverButtonWidgetShowcaseEvent {
  final TextStyle? textStyle;

  const SetTextStyleEvent([this.textStyle]);
}

final class SetTextAlignEvent
    extends MyoroIconTextHoverButtonWidgetShowcaseEvent {
  final TextAlign? textAlign;

  const SetTextAlignEvent([this.textAlign]);
}

final class SetPaddingEvent
    extends MyoroIconTextHoverButtonWidgetShowcaseEvent {
  final double? padding;

  const SetPaddingEvent([this.padding]);
}

final class SetMainAxisAlignmentEvent
    extends MyoroIconTextHoverButtonWidgetShowcaseEvent {
  final MainAxisAlignment? mainAxisAlignment;

  const SetMainAxisAlignmentEvent([this.mainAxisAlignment]);
}

final class SetOnPressedEnabledEvent
    extends MyoroIconTextHoverButtonWidgetShowcaseEvent {
  final bool onPressedEnabled;

  const SetOnPressedEnabledEvent(this.onPressedEnabled);
}
