import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_app_bar_widget_showcase_state.dart';
part 'myoro_app_bar_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroAppBarWidgetShowcaseState>;

/// BLoC to manage all the state of of [MyoroAppBarWidgetShowcase].
final class MyoroAppBarWidgetShowcaseBloc extends Bloc<MyoroAppBarWidgetShowcaseEvent, MyoroAppBarWidgetShowcaseState> {
  MyoroAppBarWidgetShowcaseBloc() : super(const MyoroAppBarWidgetShowcaseState()) {
    on<ToggleBorderedEvent>((_, emit) => _toggleBorderedEvent(emit));
  }

  void _toggleBorderedEvent(_Emitter emit) {
    emit(
      state.copyWith(
        bordered: !state.bordered,
      ),
    );
  }
}
