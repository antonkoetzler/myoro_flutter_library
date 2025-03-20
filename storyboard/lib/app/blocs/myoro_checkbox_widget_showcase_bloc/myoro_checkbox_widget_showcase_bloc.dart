import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_checkbox_widget_showcase_state.dart';
part 'myoro_checkbox_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroCheckboxWidgetShowcaseState>;

/// BloC to manage all the state in [MyoroCheckboxWidgetShowcase].
final class MyoroCheckboxWidgetShowcaseBloc
    extends
        Bloc<
          MyoroCheckboxWidgetShowcaseEvent,
          MyoroCheckboxWidgetShowcaseState
        > {
  MyoroCheckboxWidgetShowcaseBloc({required TextStyle labelTextStyle})
    : super(MyoroCheckboxWidgetShowcaseState(labelTextStyle: labelTextStyle)) {
    on<SetLabelEvent>(_setLabelEvent);
    on<SetLabelTextStyleEvent>(_setLabelTextStyleEvent);
  }

  void _setLabelEvent(SetLabelEvent event, _Emitter emit) {
    emit(state.copyWith(label: event.label));
  }

  void _setLabelTextStyleEvent(SetLabelTextStyleEvent event, _Emitter emit) {
    emit(state.copyWith(labelTextStyle: event.textStyle));
  }
}
