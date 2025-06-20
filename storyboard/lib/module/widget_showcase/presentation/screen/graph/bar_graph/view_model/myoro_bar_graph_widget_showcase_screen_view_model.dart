import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroBarGraphWidgetShowcaseScreen].
final class MyoroBarGraphWidgetShowcaseScreenViewModel {
  /// State
  final _state = MyoroBarGraphWidgetShowcaseScreenState();
  MyoroBarGraphWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Constructs the [MyoroBarGraphConfiguration].
  MyoroBarGraphConfiguration get configuration {
    return MyoroBarGraphConfiguration(sorted: state.sorted, items: state.items);
  }
}
