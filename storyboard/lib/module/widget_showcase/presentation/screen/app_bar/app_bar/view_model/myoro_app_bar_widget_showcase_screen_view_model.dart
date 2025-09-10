import 'package:storyboard/storyboard.dart';

/// View model of [MyoroAppBarWidgetShowcaseScreen].
final class MyoroAppBarWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroAppBarWidgetShowcaseScreenState();

  /// [_state] getter.
  MyoroAppBarWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }
}
