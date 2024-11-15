import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_menu_widget_showcase_state.dart';
part 'myoro_menu_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroMenuWidgetShowcaseState>;

/// BloC to manage all of the options in [MyoroMenuWidgetShowcase].
final class MyoroMenuWidgetShowcaseBloc extends Bloc<MyoroMenuWidgetShowcaseEvent, MyoroMenuWidgetShowcaseState> {
  MyoroMenuWidgetShowcaseBloc() : super(const MyoroMenuWidgetShowcaseState()) {
    on<SetIconSizeEvent>(_setIconSizeEvent);
    on<SetItemCountEvent>(_setItemCountEvent);
  }

  void _setIconSizeEvent(SetIconSizeEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        iconSize: event.iconSize,
      ),
    );
  }

  void _setItemCountEvent(SetItemCountEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        itemCount: event.itemCount,
      ),
    );
  }
}
