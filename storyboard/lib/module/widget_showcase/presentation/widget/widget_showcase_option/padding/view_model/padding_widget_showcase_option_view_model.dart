import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

part 'padding_widget_showcase_option_state.dart';

/// View model of [PaddingWidgetShowcaseOption].
final class PaddingWidgetShowcaseOptionViewModel {
  /// Creates a new instance of [PaddingWidgetShowcaseOptionViewModel].
  PaddingWidgetShowcaseOptionViewModel(PaddingWidgetShowcaseOptionConfiguration configuration)
    : _state = PaddingWidgetShowcaseOptionState(configuration) {
    _state.paddingController.addListener(_paddingControllerListener);
  }

  /// State.
  final PaddingWidgetShowcaseOptionState _state;
  PaddingWidgetShowcaseOptionState get state => _state;

  /// [EdgeInsets.all] on-changed.
  void allOnChanged(double value) {
    _state.paddingController.value = EdgeInsets.all(value);
  }

  /// [EdgeInsets.symmetric]'s vertical on-changed.
  void verticalOnChanged(double value) {
    _state.paddingController.value = _state.padding.copyWith(top: value, bottom: value);
  }

  /// [EdgeInsets.symmetric]'s horizontal on-changed.
  void horizontalOnChanged(double value) {
    _state.paddingController.value = _state.padding.copyWith(left: value, right: value);
  }

  /// [EdgeInsets.only]'s top on-changed.
  void topOnChanged(double value) {
    _state.paddingController.value = _state.padding.copyWith(top: value);
  }

  /// [EdgeInsets.only]'s bottom on-changed.
  void bottomOnChanged(double value) {
    _state.paddingController.value = _state.padding.copyWith(bottom: value);
  }

  /// [EdgeInsets.only]'s left on-changed.
  void leftOnChanged(double value) {
    _state.paddingController.value = _state.padding.copyWith(left: value);
  }

  /// [EdgeInsets.only]'s right on-changed.
  void rightOnChanged(double value) {
    _state.paddingController.value = _state.padding.copyWith(right: value);
  }

  /// Listener of [_paddingController].
  void _paddingControllerListener() {
    _state.configuration.paddingOnChanged(_state.padding);
  }

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }
}
