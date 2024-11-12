import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storyboard/storyboard.dart';

part 'widget_showcase_state.dart';
part 'widget_showcase_event.dart';

typedef _Emitter = Emitter<WidgetShowcaseState>;

/// BloC to manage the state in [WidgetShowcase] in places such as [StoryboardAppBar].
final class WidgetShowcaseBloc extends Bloc<WidgetShowcaseEvent, WidgetShowcaseState> {
  WidgetShowcaseBloc() : super(const WidgetShowcaseState()) {
    on<EnableWidgetShowcaseDisplayEvent>((_, emit) => _enableWidgetShowcaseDisplayEvent(emit));
    on<ToggleWidgetOptionsDisplayEvent>((_, emit) => _toggleWidgetOptionsDisplayEvent(emit));
  }

  void _enableWidgetShowcaseDisplayEvent(_Emitter emit) {
    emit(
      state.copyWith(
        displayingWidgetShowcase: true,
      ),
    );
  }

  void _toggleWidgetOptionsDisplayEvent(_Emitter emit) {
    emit(
      state.copyWith(
        displayingWidgetOptions: !state.displayingWidgetOptions,
      ),
    );
  }
}
