import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dropdown_state.dart';
part 'myoro_dropdown_event.dart';

typedef _Emitter<T> = Emitter<MyoroDropdownState<T>>;

/// [Bloc] which manages the logic of [MyoroSingularDropdown] and [MyoroMultiDropdown].
final class MyoroDropdownBloc<T>
    extends Bloc<MyoroDropdownEvent<T>, MyoroDropdownState<T>> {
  MyoroDropdownBloc({required bool enabled})
    : super(MyoroDropdownState<T>(enabled: enabled)) {
    on<ToggleItemEvent<T>>(_toggleItemEvent);
    on<SelectItemsEvent<T>>(_selectItemsEvent);
    on<RemoveSelectedItemsEvent<T>>(_removeSelectedItemsEvent);
    on<ClearSelectedItemsEvent<T>>(_clearSelectedItemsEvent);
    on<ToggleEnabledEvent<T>>(_toggleEnabledEvent);
  }

  void _toggleItemEvent(ToggleItemEvent<T> event, _Emitter<T> emit) {
    final selectedItems = Set<T>.from(state.selectedItems);

    emit(
      state.copyWith(
        selectedItems:
            selectedItems.contains(event.item)
                ? (selectedItems..remove(event.item))
                : (selectedItems..add(event.item)),
      ),
    );
  }

  void _selectItemsEvent(SelectItemsEvent<T> event, _Emitter<T> emit) {
    emit(
      state.copyWith(
        selectedItems: Set<T>.from(state.selectedItems)..addAll(event.items),
      ),
    );
  }

  void _removeSelectedItemsEvent(
    RemoveSelectedItemsEvent<T> event,
    _Emitter<T> emit,
  ) {
    emit(
      state.copyWith(
        selectedItems: Set<T>.from(state.selectedItems)..removeAll(event.items),
      ),
    );
  }

  void _clearSelectedItemsEvent(
    ClearSelectedItemsEvent<T> event,
    _Emitter<T> emit,
  ) {
    emit(state.copyWith(selectedItems: const {}));
  }

  void _toggleEnabledEvent(ToggleEnabledEvent<T> event, _Emitter<T> emit) {
    emit(state.copyWith(enabled: event.enabled ?? !state.enabled));
  }
}
