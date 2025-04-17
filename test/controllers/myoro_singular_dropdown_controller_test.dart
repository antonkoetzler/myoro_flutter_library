import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/blocs/myoro_dropdown_bloc/myoro_dropdown_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final MyoroSingularDropdownController<String> controller =
      MyoroSingularDropdownController<String>();
  final bool enabled = faker.randomGenerator.boolean();
  final String item = faker.randomGenerator.string(50);

  blocTest(
    'MyoroSingularDropdownController.toggleItem',
    build: () {
      final bloc = MyoroDropdownBloc<String>(enabled: enabled);
      controller.bloc = bloc;
      return bloc;
    },
    act: (_) {
      controller.toggleItem(item);
    },
    expect: () {
      return [
        MyoroDropdownState<String>(enabled: enabled, selectedItems: {item}),
      ];
    },
  );
}
