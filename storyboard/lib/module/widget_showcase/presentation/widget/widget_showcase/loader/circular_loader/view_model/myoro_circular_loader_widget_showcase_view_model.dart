import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

final class MyoroCircularLoaderWidgetShowcaseViewModel {
  /// State
  final state = MyoroCircularLoaderWidgetShowcaseState();

  /// [MyoroCircularLoaderConfiguration] of [_Widget].
  MyoroCircularLoaderConfiguration get configuration {
    return MyoroCircularLoaderConfiguration(color: state.color, size: state.size);
  }
}
