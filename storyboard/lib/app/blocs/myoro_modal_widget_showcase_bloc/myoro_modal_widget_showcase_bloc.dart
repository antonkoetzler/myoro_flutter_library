import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_modal_widget_showcase_state.dart';
part 'myoro_modal_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroModalWidgetShowcaseState>;

/// BLoC to manage the state of [MyoroModalWidgetShowcase].
final class MyoroModalWidgetShowcaseBloc
    extends Bloc<MyoroModalWidgetShowcaseEvent, MyoroModalWidgetShowcaseState> {
  MyoroModalWidgetShowcaseBloc()
    : super(const MyoroModalWidgetShowcaseState()) {
    on<SetBarrierDismissableEvent>(_setBarrierDismissableEvent);
    on<SetMinWidthEvent>(_setMinWidthEvent);
    on<SetMaxWidthEvent>(_setMaxWidthEvent);
    on<SetMinHeightEvent>(_setMinHeightEvent);
    on<SetMaxHeightEvent>(_setMaxHeightEvent);
    on<SetTitleEvent>(_setTitleEvent);
    on<SetShowCloseButtonEvent>(_setShowCloseButtonEvent);
  }

  void _setBarrierDismissableEvent(
    SetBarrierDismissableEvent event,
    _Emitter emit,
  ) {
    emit(state.copyWith(barrierDismissable: event.barrierDismissable));
  }

  void _setMinWidthEvent(SetMinWidthEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        minWidth: event.minWidth,
        minWidthEnabled: event.minWidth != null,
      ),
    );
  }

  void _setMaxWidthEvent(SetMaxWidthEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        maxWidth: event.maxWidth,
        maxWidthEnabled: event.maxWidth != null,
      ),
    );
  }

  void _setMinHeightEvent(SetMinHeightEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        minHeight: event.minHeight,
        minHeightEnabled: event.minHeight != null,
      ),
    );
  }

  void _setMaxHeightEvent(SetMaxHeightEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        maxHeight: event.maxHeight,
        maxHeightEnabled: event.maxHeight != null,
      ),
    );
  }

  void _setTitleEvent(SetTitleEvent event, _Emitter emit) {
    emit(state.copyWith(title: event.title, titleEnabled: event.title != null));
  }

  void _setShowCloseButtonEvent(SetShowCloseButtonEvent event, _Emitter emit) {
    emit(state.copyWith(showCloseButton: event.showCloseButton));
  }
}
