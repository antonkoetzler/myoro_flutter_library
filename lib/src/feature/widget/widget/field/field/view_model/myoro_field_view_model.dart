import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_field_state.dart';

/// View model of [MyoroField].
class MyoroFieldViewModel {
  /// Default constructor.
  MyoroFieldViewModel(String label, String data) : _state = MyoroFieldState(label, data);

  /// State.
  final MyoroFieldState _state;

  /// [_state] getter.
  MyoroFieldState get state {
    return _state;
  }
}
