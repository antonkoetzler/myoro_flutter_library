import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_search_input_widget_showcase_state.dart';
part 'myoro_search_input_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroSearchInputWidgetShowcaseState>;

/// BLoC to manage the state of [MyoroSearchInputWidgetShowcase].
final class MyoroSearchInputWidgetShowcaseBloc extends Bloc<MyoroSearchInputWidgetShowcaseEvent, MyoroSearchInputWidgetShowcaseState> {
  MyoroSearchInputWidgetShowcaseBloc() : super(const MyoroSearchInputWidgetShowcaseState()) {
    on<SetRequestWhenChangedEvent>(_setRequestWhenChangedEvent);
  }

  void _setRequestWhenChangedEvent(SetRequestWhenChangedEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        requestWhenChanged: event.requestWhenChanged,
      ),
    );
  }
}
