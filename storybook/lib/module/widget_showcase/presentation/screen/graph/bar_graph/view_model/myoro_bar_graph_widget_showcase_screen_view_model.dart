import 'package:storybook/storybook.dart';

/// View model of [MyoroBarGraphWidgetShowcaseScreen].
final class MyoroBarGraphWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroBarGraphWidgetShowcaseScreenState();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [_state] getter.
  MyoroBarGraphWidgetShowcaseScreenState get state => _state;
}
