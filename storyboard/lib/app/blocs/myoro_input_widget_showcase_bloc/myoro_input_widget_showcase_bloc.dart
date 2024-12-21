import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_input_widget_showcase_state.dart';
part 'myoro_input_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroInputWidgetShowcaseState>;

/// BLoC to manage the state in [MyoroInputWidgetShowcase].
final class MyoroInputWidgetShowcaseBloc extends Bloc<MyoroInputWidgetShowcaseEvent, MyoroInputWidgetShowcaseState> {
  MyoroInputWidgetShowcaseBloc() : super(const MyoroInputWidgetShowcaseState()) {
    on<SetFormatterEvent>(_setFormatterEvent);
    on<SetConfigurationEvent>(_setConfigurationEvent);
  }

  void _setFormatterEvent(SetFormatterEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        typeEnum: event.typeEnum,
      ),
    );
  }

  void _setConfigurationEvent(SetConfigurationEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        configuration: event.configuration,
      ),
    );
  }
}
