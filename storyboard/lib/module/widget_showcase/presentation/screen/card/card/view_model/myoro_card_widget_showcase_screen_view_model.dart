import 'package:storyboard/storyboard.dart';

/// View model of [MyoroCardWidgetShowcaseScreen].
final class MyoroCardWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroCardWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroCardWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }
}
