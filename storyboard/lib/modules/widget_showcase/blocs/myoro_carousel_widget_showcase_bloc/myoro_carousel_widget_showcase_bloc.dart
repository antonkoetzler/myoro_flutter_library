import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_carousel_widget_showcase_state.dart';
part 'myoro_carousel_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroCarouselWidgetShowcaseState>;

/// BLoC to manage all of the state of [MyoroCarouselWidgetShowcase].
final class MyoroCarouselWidgetShowcaseBloc
    extends Bloc<MyoroCarouselWidgetShowcaseEvent, MyoroCarouselWidgetShowcaseState> {
  MyoroCarouselWidgetShowcaseBloc() : super(const MyoroCarouselWidgetShowcaseState()) {
    on<SetDirectionEvent>(_setDirectionEvent);
    on<SetDisplayTraversalButtonsEvent>(_setDisplayTraversalButtonsEvent);
    on<SetAutoplayEvent>(_setAutoplayEvent);
    on<SetAutoplayIntervalDurationEvent>(_setAutoplayIntervalDurationEvent);
  }

  void _setDirectionEvent(SetDirectionEvent event, _Emitter emit) {
    emit(state.copyWith(direction: event.direction));
  }

  void _setDisplayTraversalButtonsEvent(SetDisplayTraversalButtonsEvent event, _Emitter emit) {
    emit(state.copyWith(displayTraversalButtons: event.displayTraversalButtons));
  }

  void _setAutoplayEvent(SetAutoplayEvent event, _Emitter emit) {
    emit(state.copyWith(autoplay: event.autoplay));
  }

  void _setAutoplayIntervalDurationEvent(SetAutoplayIntervalDurationEvent event, _Emitter emit) {
    emit(state.copyWith(autoplayIntervalDuration: event.duration));
  }
}
