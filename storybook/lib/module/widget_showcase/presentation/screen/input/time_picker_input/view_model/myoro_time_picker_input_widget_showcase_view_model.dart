import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroTimePickerInputWidgetShowcaseScreen].
final class MyoroTimePickerInputWidgetShowcaseViewModel extends MyoroInputWidgetShowcaseScreenViewModel {
  @override
  MyoroTimePickerInputConfiguration buildConfiguration(BuildContext context, Widget suffix) {
    return const MyoroTimePickerInputConfiguration();
  }
}
