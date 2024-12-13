import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_card_widget_showcase_state.dart';
part 'myoro_card_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroCardWidgetShowcaseState>;
typedef MyoroCardWidgetShowcaseBlocDimension = (bool enabled, double value);

/// BLoC to manage all the state of [MyoroCardWidgetShowcase].
final class MyoroCardWidgetShowcaseBloc extends Bloc<MyoroCardWidgetShowcaseEvent, MyoroCardWidgetShowcaseState> {
  MyoroCardWidgetShowcaseBloc() : super(const MyoroCardWidgetShowcaseState()) {
    on<SetTitleEvent>(_setTitleEvent);
    on<SetTitleTextStyleEvent>(_setTitleTextStyleEvent);
    on<SetPaddingEvent>(_setPaddingEvent);
    on<SetWidthEvent>(_setWidthEvent);
    on<SetHeightEvent>(_setHeightEvent);
  }

  void _setTitleEvent(SetTitleEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        title: event.title,
      ),
    );
  }

  void _setTitleTextStyleEvent(SetTitleTextStyleEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        titleTextStyle: event.textStyle,
      ),
    );
  }

  void _setPaddingEvent(SetPaddingEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        padding: event.padding,
      ),
    );
  }

  void _setWidthEvent(SetWidthEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        width: event.width,
      ),
    );
  }

  void _setHeightEvent(SetHeightEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        height: event.height,
      ),
    );
  }
}
