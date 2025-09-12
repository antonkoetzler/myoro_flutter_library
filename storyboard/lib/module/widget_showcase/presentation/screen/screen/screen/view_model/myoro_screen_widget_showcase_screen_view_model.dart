import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroScreenWidgetShowcaseScreen].
final class MyoroScreenWidgetShowcaseScreenViewModel {
  /// State.
  final state = MyoroScreenWidgetShowcaseScreenState();

  /// [MyoroScreenConfiguration] of the [MyoroScreen].
  MyoroScreenConfiguration buildConfiguration(PreferredSizeWidget appBar, Widget body) {
    return MyoroScreenConfiguration(appBar: state.appBarEnabled ? appBar : null, body: body);
  }
}
