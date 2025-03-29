import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dropdown_v2_state.dart';
part 'myoro_dropdown_v2_event.dart';

typedef _Emitter<T> = Emitter<MyoroDropdownV2State<T>>;

/// [Bloc] which manages the logic of [MyoroSingularDropdownV2] and [MyoroMultiDropdownV2].
final class MyoroDropdownV2Bloc<T>
    extends Bloc<MyoroDropdownV2Event<T>, MyoroDropdownV2State<T>> {
  MyoroDropdownV2Bloc({required bool enabled})
    : super(MyoroDropdownV2State<T>(enabled: enabled)) {
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
