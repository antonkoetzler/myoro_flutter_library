import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_checkbox_widget_showcase_state.dart';
part 'myoro_checkbox_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroCheckboxWidgetShowcaseState>;

/// BloC to manage all the state in [MyoroCheckboxWidgetShowcase].
final class MyoroCheckboxWidgetShowcaseBloc extends Bloc<MyoroCheckboxWidgetShowcaseEvent, MyoroCheckboxWidgetShowcaseState> {
  MyoroCheckboxWidgetShowcaseBloc() : super(const MyoroCheckboxWidgetShowcaseState()) {
    on<SetLabelTextEvent>(_setLabelTextEvent);
  }

  void _setLabelTextEvent(SetLabelTextEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        label: event.label,
      ),
    );
  }
}
