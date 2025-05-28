import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSearchInput].
class MyoroSearchInputController<T> implements MyoroSearchInputInterface {
  MyoroSearchInputController({required MyoroSearchInputConfiguration<T> configuration}) {
    state = MyoroSearchInputState(configuration);
  }

  late final MyoroSearchInputState<T> state;

  @override
  void dispose() {
    state.dispose();
  }
}
