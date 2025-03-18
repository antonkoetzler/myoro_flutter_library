import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_basic_divider_widget_showcase_state.dart';
part 'myoro_basic_divider_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroBasicDividerWidgetShowcaseState>;

/// BLoC to manage all of the state in [MyoroBasicDividerWidgetShowcase].
final class MyoroBasicDividerWidgetShowcaseBloc extends Bloc<
    MyoroBasicDividerWidgetShowcaseEvent,
    MyoroBasicDividerWidgetShowcaseState> {
  MyoroBasicDividerWidgetShowcaseBloc({
    required double shortValue,
  }) : super(
          MyoroBasicDividerWidgetShowcaseState(
            shortValue: shortValue,
          ),
        ) {
    on<SetDirectionEvent>(_setDirectionEvent);
    on<SetShortValueEvent>(_setShortValueEvent);
    on<SetPaddingEvent>(_setPaddingEvent);
  }

  void _setDirectionEvent(SetDirectionEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        direction: event.direction,
      ),
    );
  }

  void _setShortValueEvent(SetShortValueEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        shortValue: event.value,
      ),
    );
  }

  void _setPaddingEvent(SetPaddingEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        verticalPadding: event.direction.isVertical ? event.value : null,
        verticalPaddingEnabled: event.direction.isVertical,
        horizontalPadding: event.direction.isHorizontal ? event.value : null,
        horizontalPaddingEnabled: event.direction.isHorizontal,
      ),
    );
  }
}
