import 'package:storybook/storybook.dart';

final class MyoroCircularLoaderWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroCircularLoaderWidgetShowcaseScreenState();
  MyoroCircularLoaderWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }
}
