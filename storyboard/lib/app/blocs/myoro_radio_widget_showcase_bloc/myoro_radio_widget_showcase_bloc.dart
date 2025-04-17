import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_radio_widget_showcase_state.dart';
part 'myoro_radio_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroRadioWidgetShowcaseState>;

/// BLoC to manage the state of [MyoroRadioWidgetShowcase].
final class MyoroRadioWidgetShowcaseBloc extends Bloc<MyoroRadioWidgetShowcaseEvent, MyoroRadioWidgetShowcaseState> {
  MyoroRadioWidgetShowcaseBloc() : super(const MyoroRadioWidgetShowcaseState()) {
    on<SetLabelEvent>(_setLabelEvent);
    on<SetLabelTextStyleEvent>(_setLabelTextStyleEvent);
  }

  void _setLabelEvent(SetLabelEvent event, _Emitter emit) {
    emit(state.copyWith(label: event.label, labelProvided: event.label != null));
  }

  void _setLabelTextStyleEvent(SetLabelTextStyleEvent event, _Emitter emit) {
    emit(state.copyWith(labelTextStyle: event.labelTextStyle, labelTextStyleProvided: event.labelTextStyle != null));
  }
}
