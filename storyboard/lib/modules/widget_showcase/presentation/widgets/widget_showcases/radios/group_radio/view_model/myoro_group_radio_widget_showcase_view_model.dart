import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_group_radio_widget_showcase_state.dart';

/// View model of [MyoroGroupRadioWidgetShowcase].
final class MyoroGroupRadioWidgetShowcaseViewModel {
  /// State.
  final _state = MyoroGroupRadioWidgetShowcaseState();
  MyoroGroupRadioWidgetShowcaseState get state => _state;

  /// [MyoroGroupRadioConfiguration] of the [MyoroGroupRadio].
  MyoroGroupRadioConfiguration configuration(BuildContext context) {
    return MyoroGroupRadioConfiguration(
      direction: _state.direction,
      spacing: _state.spacing,
      runSpacing: _state.runSpacing,
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
    return {
      for (int i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) ...{'$i) ${faker.lorem.word()}': i == 0},
    };
  }
}
