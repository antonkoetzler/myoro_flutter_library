import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_tooltip_widget_showcase_state.dart';

/// View model of [MyoroTooltipWidgetShowcase].
final class MyoroTooltipWidgetShowcaseViewModel {
  /// State.
  final state = MyoroTooltipWidgetShowcaseState();

  /// [MyoroTooltipConfiguration] of the [MyoroTooltip].
  MyoroTooltipConfiguration get configuration {
    return MyoroTooltipConfiguration(margin: state.margin, waitDuration: state.waitDuration, text: state.text);
  }
}
