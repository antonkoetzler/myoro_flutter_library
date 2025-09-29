import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_selection_dropdown_v2_state.dart';

/// View model of [MyoroSelectionDropdownV2].
class MyoroSelectionDropdownV2ViewModel<T> {
  /// State.
  final _state = MyoroSelectionDropdownV2State<T>();

  /// [_state] getter.
  MyoroSelectionDropdownV2State<T> get state => _state;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }
}
