import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

final class MyoroCircularLoaderWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroCircularLoaderWidgetShowcaseScreenState();
  MyoroCircularLoaderWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroCircularLoaderConfiguration] of [_Widget].
  MyoroCircularLoaderConfiguration get configuration {
    return MyoroCircularLoaderConfiguration(color: state.color, size: state.size);
  }
}
