import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_table_widget_showcase_state.dart';
part 'myoro_table_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroTableWidgetShowcaseState>;

/// [Bloc] of [MyoroTableWidgetShowcase].
///
/// TODO: Needs to be tested.
final class MyoroTableWidgetShowcaseBloc
    extends Bloc<MyoroTableWidgetShowcaseEvent, MyoroTableWidgetShowcaseState> {
  MyoroTableWidgetShowcaseBloc() : super(const MyoroTableWidgetShowcaseState()) {
    on<SetShowPaginationControlsEvent>(_setShowPaginationControlsEvent);
  }

  void _setShowPaginationControlsEvent(SetShowPaginationControlsEvent event, _Emitter emit) {
    emit(state.copyWith(showPaginationControls: event.showPaginationControls));
  }
}
