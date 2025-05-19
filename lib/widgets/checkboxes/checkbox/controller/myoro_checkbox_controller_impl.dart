part of '../myoro_checkbox.dart';

/// Implementation of [MyoroCheckboxController].
final class MyoroCheckboxControllerImpl extends MyoroCheckboxController {
  MyoroCheckboxControllerImpl(MyoroCheckboxConfiguration configuration) {
    _configuration = configuration;
    _enabledNotifier = ValueNotifier(_configuration.initialValue);
  }
}
