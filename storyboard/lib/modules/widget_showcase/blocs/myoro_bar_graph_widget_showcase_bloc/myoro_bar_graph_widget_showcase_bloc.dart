import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_bar_graph_widget_showcase_state.dart';
part 'myoro_bar_graph_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroBarGraphWidgetShowcaseState>;

/// BLoC to manage the state of [MyoroBarGraphWidgetShowcase].
final class MyoroBarGraphWidgetShowcaseBloc
    extends Bloc<MyoroBarGraphWidgetShowcaseEvent, MyoroBarGraphWidgetShowcaseState> {
  MyoroBarGraphWidgetShowcaseBloc() : super(const MyoroBarGraphWidgetShowcaseState()) {
    on<SetSortedEvent>(_setSortedEvent);
  }

  void _setSortedEvent(SetSortedEvent event, _Emitter emit) {
    emit(state.copyWith(sorted: event.enabled));
  }
}
