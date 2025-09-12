import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroDatePickerInputWidgetShowcaseScreen].
final class MyoroDatePickerInputWidgetShowcaseViewModel extends MyoroInputWidgetShowcaseScreenViewModel {
  @override
  MyoroDatePickerInputConfiguration buildConfiguration(BuildContext context, Widget suffix) {
    return const MyoroDatePickerInputConfiguration();
  }
}
