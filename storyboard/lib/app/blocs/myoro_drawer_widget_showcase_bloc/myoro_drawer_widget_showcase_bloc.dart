import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_drawer_widget_showcase_state.dart';
part 'myoro_drawer_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroDrawerWidgetShowcaseState>;

/// BLoC to manage the state in [MyoroDrawerWidgetShowcase].
final class MyoroDrawerWidgetShowcaseBloc
    extends
        Bloc<MyoroDrawerWidgetShowcaseEvent, MyoroDrawerWidgetShowcaseState> {
  MyoroDrawerWidgetShowcaseBloc()
    : super(const MyoroDrawerWidgetShowcaseState()) {
    on<SetTitleEvent>(_setTitleEvent);
    on<SetTitleTextStyleEvent>(_setTitleTextStyleEvent);
    on<SetShowCloseButtonEvent>(_setShowCloseButtonEvent);
    on<SetBarrierDismissableEvent>(_setBarrierDismissableEvent);
  }

  void _setTitleEvent(SetTitleEvent event, _Emitter emit) {
    emit(
      state.copyWith(title: event.title, titleProvided: event.title != null),
    );
  }

  void _setTitleTextStyleEvent(SetTitleTextStyleEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        titleTextStyle: event.textStyle,
        titleTextStyleProvided: event.textStyle != null,
      ),
    );
  }

  void _setShowCloseButtonEvent(SetShowCloseButtonEvent event, _Emitter emit) {
    emit(state.copyWith(showCloseButton: event.showCloseButton));
  }

  void _setBarrierDismissableEvent(
    SetBarrierDismissableEvent event,
    _Emitter emit,
  ) {
    emit(state.copyWith(barrierDismissable: event.barrierDismissable));
  }
}
