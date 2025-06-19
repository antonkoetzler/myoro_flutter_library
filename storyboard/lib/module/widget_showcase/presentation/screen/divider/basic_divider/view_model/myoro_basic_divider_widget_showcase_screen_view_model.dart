import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroBasicDividerWidgetShowcaseScreen].
final class MyoroBasicDividerWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroBasicDividerWidgetShowcaseScreenState();
  MyoroBasicDividerWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [MyoroBasicDividerConfiguration] of the [MyoroBasicDivider].
  MyoroBasicDividerConfiguration get configuration {
    return MyoroBasicDividerConfiguration(
      direction: _state.direction,
      shortValue: _state.shortValue,
      padding: _state.padding,
    );
  }
}
