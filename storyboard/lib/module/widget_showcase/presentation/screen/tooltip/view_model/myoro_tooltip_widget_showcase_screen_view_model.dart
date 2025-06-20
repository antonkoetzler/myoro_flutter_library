import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroTooltipWidgetShowcaseScreen].
final class MyoroTooltipWidgetShowcaseScreenViewModel {
  /// State.
  final state = MyoroTooltipWidgetShowcaseScreenState();

  /// [MyoroTooltipConfiguration] of the [MyoroTooltip].
  MyoroTooltipConfiguration get configuration {
    return MyoroTooltipConfiguration(margin: state.margin, waitDuration: state.waitDuration, text: state.text);
  }
}
