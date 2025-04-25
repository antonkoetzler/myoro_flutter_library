import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/blocs/myoro_dropdown_bloc/myoro_dropdown_bloc.dart';

void main() {
  final bool enabled = faker.randomGenerator.boolean();
  final String item1 = '#1 ${faker.randomGenerator.string(50)}';
  final String item2 = '#2 ${faker.randomGenerator.string(50)}';
  final state = MyoroDropdownState<String>(enabled: enabled);

  blocTest(
    'MyoroDropdownBloc.ToggleItemEvent',
    build: () {
      return MyoroDropdownBloc<String>(enabled: enabled);
    },
    act: (MyoroDropdownBloc<String> bloc) {
      bloc
        ..add(ToggleItemEvent(item1))
        ..add(ToggleItemEvent(item2))
        ..add(ToggleItemEvent(item1))
        ..add(ToggleItemEvent(item2));
    },
    expect: () {
      return [
        state.copyWith(selectedItems: {item1}),
        state.copyWith(selectedItems: {item1, item2}),
        state.copyWith(selectedItems: {item2}),
        state.copyWith(selectedItems: const {}),
      ];
    },
  );

  blocTest(
    'MyoroDropdownBloc.SelectItemsEvent',
    build: () {
      return MyoroDropdownBloc<String>(enabled: enabled);
    },
    act: (MyoroDropdownBloc<String> bloc) {
      bloc.add(SelectItemsEvent({item1, item2}));
    },
    expect: () {
      return [
        state.copyWith(selectedItems: {item1, item2}),
      ];
    },
  );

  blocTest(
    'MyoroDropdownBloc.RemoveSelectedItemsEvent',
    build: () {
      return MyoroDropdownBloc<String>(enabled: enabled);
    },
    act: (MyoroDropdownBloc<String> bloc) {
      bloc
        ..add(SelectItemsEvent({item1, item2}))
        ..add(RemoveSelectedItemsEvent({item1}))
        ..add(RemoveSelectedItemsEvent({item2}));
    },
    expect: () {
      return [
        state.copyWith(selectedItems: {item1, item2}),
        state.copyWith(selectedItems: {item2}),
        state.copyWith(selectedItems: const {}),
      ];
    },
  );

  blocTest(
    'MyoroDropdownBloc.ClearSelectedItemsEvent',
    build: () {
      return MyoroDropdownBloc<String>(enabled: enabled);
    },
    act: (MyoroDropdownBloc<String> bloc) {
      bloc
        ..add(SelectItemsEvent({item1, item2}))
        ..add(const ClearSelectedItemsEvent());
    },
    expect: () {
      return [
        state.copyWith(selectedItems: {item1, item2}),
        state.copyWith(selectedItems: const {}),
      ];
    },
  );

  blocTest(
    'MyoroDropdownBloc.ToggleEnabledEvent',
    build: () {
      return MyoroDropdownBloc<String>(enabled: enabled);
    },
    act: (MyoroDropdownBloc<String> bloc) {
      bloc
        ..add(const ToggleEnabledEvent())
        ..add(const ToggleEnabledEvent())
        ..add(ToggleEnabledEvent(!enabled));
    },
    expect: () {
      return [state.copyWith(enabled: !enabled), state, state.copyWith(enabled: !enabled)];
    },
  );
}
