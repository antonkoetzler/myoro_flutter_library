import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [PaddingWidgetShowcaseOption].
final class PaddingWidgetShowcaseOptionViewModel {
  PaddingWidgetShowcaseOptionViewModel(this.configuration) {
    paddingController.addListener(_paddingControllerListener);
  }

  /// Configuration.
  final PaddingWidgetShowcaseOptionConfiguration configuration;

  /// [ValueNotifier] of the [PaddingWidgetShowcaseOptionEnum] loaded.
  final modeEnumController = ValueNotifier(PaddingWidgetShowcaseOptionEnum.symmetric);
  PaddingWidgetShowcaseOptionEnum get modeEnum => modeEnumController.value;

  /// Generated [EdgeInsets].
  final paddingController = ValueNotifier(EdgeInsets.zero);
  EdgeInsets get padding => paddingController.value;

  /// Dispose function.
  void dispose() {
    modeEnumController.dispose();
    paddingController.dispose();
  }

  /// [EdgeInsets.all] on-changed.
  void allOnChanged(double value) {
    paddingController.value = EdgeInsets.all(value);
  }

  /// [EdgeInsets.symmetric]'s vertical on-changed.
  void verticalOnChanged(double value) {
    paddingController.value = padding.copyWith(top: value, bottom: value);
  }

  /// [EdgeInsets.symmetric]'s horizontal on-changed.
  void horizontalOnChanged(double value) {
    paddingController.value = padding.copyWith(left: value, right: value);
  }

  /// [EdgeInsets.only]'s top on-changed.
  void topOnChanged(double value) {
    paddingController.value = padding.copyWith(top: value);
  }

  /// [EdgeInsets.only]'s bottom on-changed.
  void bottomOnChanged(double value) {
    paddingController.value = padding.copyWith(bottom: value);
  }

  /// [EdgeInsets.only]'s left on-changed.
  void leftOnChanged(double value) {
    paddingController.value = padding.copyWith(left: value);
  }

  /// [EdgeInsets.only]'s right on-changed.
  void rightOnChanged(double value) {
    paddingController.value = padding.copyWith(right: value);
  }

  /// Listener of [paddingController].
  void _paddingControllerListener() {
    configuration.paddingOnChanged(padding);
  }
}
