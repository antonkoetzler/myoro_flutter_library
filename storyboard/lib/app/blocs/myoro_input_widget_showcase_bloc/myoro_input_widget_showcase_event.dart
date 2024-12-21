part of 'myoro_input_widget_showcase_bloc.dart';

@immutable
sealed class MyoroInputWidgetShowcaseEvent {
  const MyoroInputWidgetShowcaseEvent();
}

final class SetFormatterEvent extends MyoroInputWidgetShowcaseEvent {
  final MyoroInputWidgetShowcaseEnum typeEnum;

  const SetFormatterEvent(this.typeEnum);
}

final class SetConfigurationEvent extends MyoroInputWidgetShowcaseEvent {
  final MyoroInputConfiguration configuration;

  const SetConfigurationEvent(this.configuration);
}
