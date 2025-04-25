import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_tooltip_widget_showcase_state.dart';
part 'myoro_tooltip_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroTooltipWidgetShowcaseState>;

/// BLoC to manage the state of [MyoroTooltipWidgetShowcase].
final class MyoroTooltipWidgetShowcaseBloc
    extends Bloc<MyoroTooltipWidgetShowcaseEvent, MyoroTooltipWidgetShowcaseState> {
  MyoroTooltipWidgetShowcaseBloc() : super(const MyoroTooltipWidgetShowcaseState()) {
    on<SetMarginEvent>(_setMarginEvent);
    on<SetTextEvent>(_setTextEvent);
  }

  void _setMarginEvent(SetMarginEvent event, _Emitter emit) {
    emit(state.copyWith(margin: event.margin));
  }

  void _setTextEvent(SetTextEvent event, _Emitter emit) {
    emit(state.copyWith(text: event.text));
  }
}
