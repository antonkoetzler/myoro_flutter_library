import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_dropdown_widget_showcase_state.dart';
part 'myoro_dropdown_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroDropdownWidgetShowcaseState>;

/// BLoC to manage the state of [MyoroDropdownWidgetShowcase].
final class MyoroDropdownWidgetShowcaseBloc extends Bloc<MyoroDropdownWidgetShowcaseEvent, MyoroDropdownWidgetShowcaseState> {
  MyoroDropdownWidgetShowcaseBloc() : super(const MyoroDropdownWidgetShowcaseState()) {
    on<SetLabelEvent>(_setLabelEvent);
  }

  void _setLabelEvent(SetLabelEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        label: event.label,
        labelEnabled: event.label != null,
      ),
    );
  }
}
