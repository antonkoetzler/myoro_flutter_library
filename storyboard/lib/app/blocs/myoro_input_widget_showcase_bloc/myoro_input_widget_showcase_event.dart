part of 'myoro_input_widget_showcase_bloc.dart';

@immutable
sealed class MyoroInputWidgetShowcaseEvent {
  const MyoroInputWidgetShowcaseEvent();
}

final class SetFormatterEvent extends MyoroInputWidgetShowcaseEvent {
  final MyoroInputWidgetShowcaseEnum typeEnum;

  const SetFormatterEvent(this.typeEnum);
}

final class SetInputStyleEvent extends MyoroInputWidgetShowcaseEvent {
  final MyoroInputStyleEnum inputStyle;

  const SetInputStyleEvent(this.inputStyle);
}

final class SetTextAlignEvent extends MyoroInputWidgetShowcaseEvent {
  final TextAlign? textAlign;

  const SetTextAlignEvent([this.textAlign]);
}

final class SetInputTextStyleEvent extends MyoroInputWidgetShowcaseEvent {
  final TextStyle? inputTextStyle;

  const SetInputTextStyleEvent([this.inputTextStyle]);
}

final class SetLabelEvent extends MyoroInputWidgetShowcaseEvent {
  final String? label;

  const SetLabelEvent([this.label]);
}

final class SetPlaceholderEvent extends MyoroInputWidgetShowcaseEvent {
  final String? placeholder;

  const SetPlaceholderEvent([this.placeholder]);
}

final class SetLabelTextStyleEvent extends MyoroInputWidgetShowcaseEvent {
  final TextStyle? labelTextStyle;

  const SetLabelTextStyleEvent([this.labelTextStyle]);
}

final class SetSuffixEnabledEvent extends MyoroInputWidgetShowcaseEvent {
  final bool enabled;

  const SetSuffixEnabledEvent(this.enabled);
}

final class SetEnabledEvent extends MyoroInputWidgetShowcaseEvent {
  final bool enabled;

  const SetEnabledEvent(this.enabled);
}

final class SetReadOnlyEvent extends MyoroInputWidgetShowcaseEvent {
  final bool enabled;

  const SetReadOnlyEvent(this.enabled);
}

final class SetShowClearTextButtonEvent extends MyoroInputWidgetShowcaseEvent {
  final bool enabled;

  const SetShowClearTextButtonEvent(this.enabled);
}

final class SetCheckboxOnChangedEnabledEvent extends MyoroInputWidgetShowcaseEvent {
  final bool enabled;

  const SetCheckboxOnChangedEnabledEvent(this.enabled);
}
