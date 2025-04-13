import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/blocs/myoro_dropdown_bloc/myoro_dropdown_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final MyoroMultiDropdownController<String> controller =
      MyoroMultiDropdownController<String>();
  final bool enabled = faker.randomGenerator.boolean();
  final MyoroDropdownState<String> state = MyoroDropdownState(enabled: enabled);
  final String item1 = '#1 ${faker.randomGenerator.string(50)}';
  final String item2 = '#2 ${faker.randomGenerator.string(50)}';

  blocTest(
    'MyoroMultiDropdownController.selectItems',
    build: () {
      final bloc = MyoroDropdownBloc<String>(enabled: enabled);
      controller.bloc = bloc;
      return bloc;
    },
    act: (_) {
      controller
        ..selectItems({item1})
        ..selectItems({item2});
    },
    expect: () {
      return [
        state.copyWith(selectedItems: {item1}),
        state.copyWith(selectedItems: {item1, item2}),
      ];
    },
  );

  blocTest(
    'MyoroMultiDropdownController.removeItems',
    build: () {
      final bloc = MyoroDropdownBloc<String>(enabled: enabled);
      controller.bloc = bloc;
      return bloc;
    },
    act: (_) {
      controller
        ..selectItems({item1})
        ..selectItems({item2})
        ..removeItems({item1, item2});
    },
    expect: () {
      return [
        state.copyWith(selectedItems: {item1}),
        state.copyWith(selectedItems: {item1, item2}),
        state,
      ];
    },
  );
}
