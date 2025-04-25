import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_snack_bar_widget_showcase_state.dart';
part 'myoro_snack_bar_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroSnackBarWidgetShowcaseState>;

/// BLoC to manage the state of [MyoroSnackBarWidgetShowcase].
final class MyoroSnackBarWidgetShowcaseBloc
    extends Bloc<MyoroSnackBarWidgetShowcaseEvent, MyoroSnackBarWidgetShowcaseState> {
  MyoroSnackBarWidgetShowcaseBloc() : super(MyoroSnackBarWidgetShowcaseState()) {
    on<SetSnackBarTypeEvent>(_setSnackBarTypeEvent);
    on<SetShowCloseButtonEvent>(_setShowCloseButtonEvent);
    on<SetMessageEvent>(_setMessageEvent);
    on<SetChildEnabledEvent>(_setChildEnabledEvent);
  }

  void _setSnackBarTypeEvent(SetSnackBarTypeEvent event, _Emitter emit) {
    emit(state.copyWith(snackBarType: event.snackBarType));
  }

  void _setShowCloseButtonEvent(SetShowCloseButtonEvent event, _Emitter emit) {
    emit(state.copyWith(showCloseButton: event.showCloseButton));
  }

  void _setMessageEvent(SetMessageEvent event, _Emitter emit) {
    emit(state.copyWith(message: event.message));
  }

  void _setChildEnabledEvent(SetChildEnabledEvent event, _Emitter emit) {
    emit(state.copyWith(childEnabled: event.childEnabled));
  }
}
