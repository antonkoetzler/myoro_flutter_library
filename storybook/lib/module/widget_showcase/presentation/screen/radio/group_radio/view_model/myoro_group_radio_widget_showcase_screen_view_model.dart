import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [MyoroGroupRadioWidgetShowcaseScreen].
final class MyoroGroupRadioWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroGroupRadioWidgetShowcaseScreenState();
  MyoroGroupRadioWidgetShowcaseScreenState get state => _state;

  /// [MyoroGroupRadioConfiguration] of the [MyoroGroupRadio].
  MyoroGroupRadioConfiguration buildConfiguration(BuildContext context) {
    return MyoroGroupRadioConfiguration(
      direction: _state.direction,
      onChanged: _state.onChangedEnabled ? (key, radios) => _onChanged(context, key, radios) : null,
      radios: _radios,
    );
  }

  /// [MyoroGroupRadioConfiguration.onChanged]
  void _onChanged(BuildContext context, String key, MyoroGroupRadioItems radios) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(message: '$key is the currently selected radio!'),
      ),
    );
  }

  /// [MyoroGroupRadioConfiguration.radios
  MyoroGroupRadioItems get _radios {
    return {for (int i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) 'Item #$i': false};
  }
}
