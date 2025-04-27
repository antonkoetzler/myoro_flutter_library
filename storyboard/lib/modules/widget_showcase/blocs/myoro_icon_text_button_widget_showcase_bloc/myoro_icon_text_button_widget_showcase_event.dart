part of 'myoro_icon_text_button_widget_showcase_bloc.dart';

@immutable
sealed class MyoroIconTextButtonWidgetShowcaseEvent {
  const MyoroIconTextButtonWidgetShowcaseEvent();
}

final class SetInvertEvent extends MyoroIconTextButtonWidgetShowcaseEvent {
  final bool invert;

  const SetInvertEvent(this.invert);
}

final class SetSpacingEvent extends MyoroIconTextButtonWidgetShowcaseEvent {
  final double spacing;

  const SetSpacingEvent(this.spacing);
}

final class SetPaddingEvent extends MyoroIconTextButtonWidgetShowcaseEvent {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;

  const SetPaddingEvent({this.top, this.bottom, this.left, this.right});
}

final class SetContentColorBuilderEnabledEvent extends MyoroIconTextButtonWidgetShowcaseEvent {
  final bool contentColorBuilderEnabled;

  const SetContentColorBuilderEnabledEvent(this.contentColorBuilderEnabled);
}

final class SetIdleContentColorEvent extends MyoroIconTextButtonWidgetShowcaseEvent {
  final Color? idleContentColor;

  const SetIdleContentColorEvent([this.idleContentColor]);
}

final class SetHoverContentColorEvent extends MyoroIconTextButtonWidgetShowcaseEvent {
  final Color? hoverContentColor;

  const SetHoverContentColorEvent([this.hoverContentColor]);
}

final class SetTapContentColorEvent extends MyoroIconTextButtonWidgetShowcaseEvent {
  final Color? tapContentColor;

  const SetTapContentColorEvent([this.tapContentColor]);
}

final class SetIconEvent extends MyoroIconTextButtonWidgetShowcaseEvent {
  final IconData? icon;

  const SetIconEvent([this.icon]);
}

final class SetIconSizeEvent extends MyoroIconTextButtonWidgetShowcaseEvent {
  final double? iconSize;

  const SetIconSizeEvent([this.iconSize]);
}

final class SetTextEvent extends MyoroIconTextButtonWidgetShowcaseEvent {
  final String text;

  const SetTextEvent(this.text);
}

final class SetTextMaxLinesEvent extends MyoroIconTextButtonWidgetShowcaseEvent {
  final int textMaxLines;

  const SetTextMaxLinesEvent(this.textMaxLines);
}

final class SetTextOverflowEvent extends MyoroIconTextButtonWidgetShowcaseEvent {
  final TextOverflow textOverflow;

  const SetTextOverflowEvent(this.textOverflow);
}

final class SetTextAlignmentEvent extends MyoroIconTextButtonWidgetShowcaseEvent {
  final TextAlign textAlignment;

  const SetTextAlignmentEvent(this.textAlignment);
}

final class SetTextStyleEvent extends MyoroIconTextButtonWidgetShowcaseEvent {
  final TextStyle? textStyle;

  const SetTextStyleEvent([this.textStyle]);
}
