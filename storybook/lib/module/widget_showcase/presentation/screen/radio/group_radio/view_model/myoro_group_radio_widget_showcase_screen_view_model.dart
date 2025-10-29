import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroGroupRadioWidgetShowcaseScreen].
final class MyoroGroupRadioWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroGroupRadioWidgetShowcaseScreenState();
  MyoroGroupRadioWidgetShowcaseScreenState get state => _state;

  /// [MyoroGroupRadioConfiguration.onChanged]
  void onChanged(BuildContext context, String key, MyoroGroupRadioItems radios) {
    context.showSnackBar(snackBar: MyoroSnackBar(message: '$key is the currently selected radio!'));
  }

  /// [MyoroGroupRadioConfiguration.radios
  MyoroGroupRadioItems get radios {
    return {for (int i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) 'Item #$i': false};
  }
}
