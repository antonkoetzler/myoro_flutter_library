import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroBarGraphWidgetShowcase].
final class MyoroBarGraphWidgetShowcaseViewModel {
  /// State
  final _state = MyoroBarGraphWidgetShowcaseState();
  MyoroBarGraphWidgetShowcaseState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Constructs the [MyoroBarGraphConfiguration].
  MyoroBarGraphConfiguration get configuration {
    return MyoroBarGraphConfiguration(sorted: state.sorted, items: state.items);
  }
}
