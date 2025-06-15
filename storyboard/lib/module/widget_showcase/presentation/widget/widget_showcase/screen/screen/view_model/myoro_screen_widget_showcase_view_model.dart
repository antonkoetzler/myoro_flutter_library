import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_screen_widget_showcase_state.dart';

/// View model of [MyoroScreenWidgetShowcase].
final class MyoroScreenWidgetShowcaseViewModel {
  /// State.
  final state = MyoroScreenWidgetShowcaseState();

  /// [MyoroScreenConfiguration] of the [MyoroScreen].
  MyoroScreenConfiguration configuration(PreferredSizeWidget appBar, Widget body) {
    return MyoroScreenConfiguration(appBar: state.appBarEnabled ? appBar : null, body: body);
  }
}
