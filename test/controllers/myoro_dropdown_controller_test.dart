import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final controller = MyoroDropdownController<String>();

  blocTest(
    'MyoroDropdownController.toggleEnabled',
    build: () {
      controller.bloc = _createBloc();
      return controller.bloc;
    },
  );
}

MyoroDropdownBloc<String> _createBloc() {
  return MyoroDropdownBloc<String>(enabled: faker.randomGenerator.boolean());
}
