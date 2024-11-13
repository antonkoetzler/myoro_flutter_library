import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_group_checkbox_widget_showcase_state.dart';
part 'myoro_group_checkbox_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroGroupCheckboxWidgetShowcaseState>;

/// BloC to manage all the state in [MyoroGroupCheckboxWidgetShowcase].
final class MyoroGroupCheckboxWidgetShowcaseBloc extends Bloc<MyoroGroupCheckboxWidgetShowcaseEvent, MyoroGroupCheckboxWidgetShowcaseState> {
  MyoroGroupCheckboxWidgetShowcaseBloc()
      : super(
          MyoroGroupCheckboxWidgetShowcaseState(
            items: [
              MyoroGroupCheckboxItem.fake(),
            ],
          ),
        ) {
    on<SetItemsEvent>(_setItemsEvent);
  }

  void _setItemsEvent(SetItemsEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        items: event.items,
      ),
    );
  }
}
