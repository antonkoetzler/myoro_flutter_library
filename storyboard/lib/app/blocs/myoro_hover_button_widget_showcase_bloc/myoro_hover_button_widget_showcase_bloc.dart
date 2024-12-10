import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_hover_button_widget_showcase_state.dart';
part 'myoro_hover_button_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroHoverButtonWidgetShowcaseState>;

/// BLoC to manage all of the state in [MyoroHoverButtonWidgetShowcase].
final class MyoroHoverButtonWidgetShowcaseBloc extends Bloc<MyoroHoverButtonWidgetShowcaseEvent, MyoroHoverButtonWidgetShowcaseState> {
  MyoroHoverButtonWidgetShowcaseBloc() : super(const MyoroHoverButtonWidgetShowcaseState()) {
    on<ToggleOnPressedEnabledEvent>((_, emit) => _toggleOnPressedEnabledEvent(emit));
  }

  void _toggleOnPressedEnabledEvent(_Emitter emit) {
    emit(
      state.copyWith(
        onPressedEnabled: !state.onPressedEnabled,
      ),
    );
  }
}
