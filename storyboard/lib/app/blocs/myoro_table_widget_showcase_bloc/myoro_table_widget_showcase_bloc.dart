import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_table_widget_showcase_state.dart';
part 'myoro_table_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroTableWidgetShowcaseState>;

/// BLoC to manage the state of [MyoroTableWidgetShowcase].
final class MyoroTableWidgetShowcaseBloc extends Bloc<MyoroTableWidgetShowcaseEvent, MyoroTableWidgetShowcaseState> {
  MyoroTableWidgetShowcaseBloc() : super(const MyoroTableWidgetShowcaseState()) {
    on<SetEnableColumnResizingEvent>(_setEnableColumnResizingEvent);
    on<SetEnableCheckboxesEvent>(_setEnableCheckboxesEvent);
    on<SetShowPaginationControlsEvent>(_setShowPaginationControlsEvent);
  }

  void _setEnableColumnResizingEvent(SetEnableColumnResizingEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        enableColumnResizing: event.enableColumnResizing,
      ),
    );
  }

  void _setEnableCheckboxesEvent(SetEnableCheckboxesEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        enableCheckboxes: event.enableCheckboxes,
      ),
    );
  }

  void _setShowPaginationControlsEvent(SetShowPaginationControlsEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        showPaginationControls: event.showPaginationControls,
      ),
    );
  }
}
