import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_dropdown_widget_showcase_state.dart';
part 'myoro_dropdown_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroDropdownWidgetShowcaseState>;

/// [Bloc] of shared logic between [MyoroSingularDropdownWidgetShowcase] and [MyoroMultiDropdownWidgetShowcase].
///
/// All of [MyoroDropdownConfiguration]'s options should be placed within this [Bloc].
final class MyoroDropdownWidgetShowcaseBloc
    extends
        Bloc<
          MyoroDropdownWidgetShowcaseEvent,
          MyoroDropdownWidgetShowcaseState
        > {
  MyoroDropdownWidgetShowcaseBloc()
    : super(const MyoroDropdownWidgetShowcaseState()) {
    on<SetLabelEvent>(_setLabelEvent);
    on<SetEnabledEvent>(_setEnabledEvent);
    on<SetAllowItemClearingEvent>(_setAllowItemClearingEvent);
    on<SetCheckboxOnChangedEnabledEvent>(_setCheckboxOnChangedEnabledEvent);
  }

  void _setLabelEvent(SetLabelEvent event, _Emitter emit) {
    emit(state.copyWith(label: event.label));
  }

  void _setEnabledEvent(SetEnabledEvent event, _Emitter emit) {
    emit(state.copyWith(enabled: event.enabled ?? !state.enabled));
  }

  void _setAllowItemClearingEvent(
    SetAllowItemClearingEvent event,
    _Emitter emit,
  ) {
    emit(
      state.copyWith(
        allowItemClearing: event.allowItemClearing ?? !state.allowItemClearing,
      ),
    );
  }

  void _setCheckboxOnChangedEnabledEvent(
    SetCheckboxOnChangedEnabledEvent event,
    _Emitter emit,
  ) {
    emit(
      state.copyWith(
        checkboxOnChangedEnabled:
            event.checkboxOnChangedEnabled ?? !state.checkboxOnChangedEnabled,
      ),
    );
  }
}
