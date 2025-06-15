import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroCheckbox].
class MyoroCheckboxViewModel implements MyoroCheckboxViewModelInterface {
  MyoroCheckboxViewModel(MyoroCheckboxConfiguration configuration) : state = MyoroCheckboxViewModelState(configuration);

  final MyoroCheckboxViewModelState state;

  @override
  void dispose() {
    state.dispose();
  }

  @override
  void toggle([bool? enabled]) {
    state.enabledController.value = enabled ?? !state.enabled;
  }
}
