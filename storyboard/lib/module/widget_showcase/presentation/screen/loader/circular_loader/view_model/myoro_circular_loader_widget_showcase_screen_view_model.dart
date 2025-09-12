import 'package:storyboard/storyboard.dart';

final class MyoroCircularLoaderWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroCircularLoaderWidgetShowcaseScreenState();
  MyoroCircularLoaderWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }
}
