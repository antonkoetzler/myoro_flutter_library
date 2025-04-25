import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_pie_graph_widget_showcase_state.dart';
part 'myoro_pie_graph_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroPieGraphWidgetShowcaseState>;

/// BLoC to manage the state of [MyoroPieGraphWidgetShowcase].
final class MyoroPieGraphWidgetShowcaseBloc
    extends Bloc<MyoroPieGraphWidgetShowcaseEvent, MyoroPieGraphWidgetShowcaseState> {
  MyoroPieGraphWidgetShowcaseBloc() : super(const MyoroPieGraphWidgetShowcaseState()) {
    on<SetTypeEnumEvent>(_setTypeEnumEvent);
    on<SetCenterWidgetEnabledEvent>(_setCenterWidgetEnabledEvent);
  }

  void _setTypeEnumEvent(SetTypeEnumEvent event, _Emitter emit) {
    emit(state.copyWith(typeEnum: event.typeEnum, centerWidgetEnabled: event.typeEnum.isDonut));
  }

  void _setCenterWidgetEnabledEvent(SetCenterWidgetEnabledEvent event, _Emitter emit) {
    emit(state.copyWith(centerWidgetEnabled: event.enabled));
  }
}
