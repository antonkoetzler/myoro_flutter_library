import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_scrollable_widget_showcase_state.dart';
part 'myoro_scrollable_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroScrollableWidgetShowcaseState>;

/// BLoC to manage the state of [MyoroScrollableWidgetShowcase].
final class MyoroScrollableWidgetShowcaseBloc extends Bloc<MyoroScrollableWidgetShowcaseEvent, MyoroScrollableWidgetShowcaseState> {
  MyoroScrollableWidgetShowcaseBloc() : super(const MyoroScrollableWidgetShowcaseState()) {
    on<SetScrollableTypeEvent>(_setScrollableTypeEvent);
    on<SetDirectionEvent>(_setDirectionEvent);
    on<SetPaddingEvent>(_setPaddingEvent);
  }

  void _setScrollableTypeEvent(SetScrollableTypeEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        scrollableType: event.scrollableType,
      ),
    );
  }

  void _setDirectionEvent(SetDirectionEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        direction: event.direction,
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
}
