import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_dropdown_widget_showcases_state.dart';
part 'myoro_dropdown_widget_showcases_event.dart';

typedef _Emitter = Emitter<MyoroDropdownWidgetShowcasesState>;

/// BLoC that manages options that are used in both [MyoroSingularDropdownWidgetShowcase] & [MyoroMultiDropdownWidgetShowcase].
final class MyoroDropdownWidgetShowcasesBloc extends Bloc<
    MyoroDropdownWidgetShowcasesEvent, MyoroDropdownWidgetShowcasesState> {
  MyoroDropdownWidgetShowcasesBloc()
      : super(const MyoroDropdownWidgetShowcasesState()) {
    on<SetLabelEvent>(_setLabelEvent);
    on<SetLabelTextStyleEvent>(_setLabelTextStyleEvent);
    on<SetEnabledEvent>(_setEnabledEvent);
    on<SetAllowItemClearingEvent>(_setAllowItemClearingEvent);
    on<SetMenuMaxHeightEvent>(_setMenuMaxHeightEvent);
    on<SetMenuSearchCallbackEnabledEvent>(_setMenuSearchCallbackEnabledEvent);
    on<SetCheckboxOnChangedEnabledEvent>(_setCheckboxOnChangedEnabledEvent);
  }

  void _setLabelEvent(SetLabelEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        label: event.label,
      ),
    );
  }

  void _setLabelTextStyleEvent(SetLabelTextStyleEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        labelTextStyle: event.labelTextStyle,
        labelTextStyleEnabled: event.labelTextStyle != null,
      ),
    );
  }

  void _setEnabledEvent(SetEnabledEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        enabled: event.enabled,
      ),
    );
  }

  void _setAllowItemClearingEvent(
      SetAllowItemClearingEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        allowItemClearing: event.allowItemClearing,
      ),
    );
  }

  void _setMenuMaxHeightEvent(SetMenuMaxHeightEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        menuMaxHeight: event.menuMaxHeight,
        menuMaxHeightEnabled: event.menuMaxHeight != null,
      ),
    );
  }

  void _setMenuSearchCallbackEnabledEvent(
      SetMenuSearchCallbackEnabledEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        menuSearchCallbackEnabled: event.menuSearchCallbackEnabled,
      ),
    );
  }

  void _setCheckboxOnChangedEnabledEvent(
      SetCheckboxOnChangedEnabledEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        checkboxOnChangedEnabled: event.checkboxOnChangedEnabled,
      ),
    );
  }
}
