import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [PaddingWidgetShowcaseOption].
final class PaddingWidgetShowcaseOptionViewModel {
  PaddingWidgetShowcaseOptionViewModel(this.configuration) {
    _enabledController = ValueNotifier(configuration.enabled);
    _paddingController.addListener(_paddingControllerListener);
  }

  /// Configuration.
  final PaddingWidgetShowcaseOptionConfiguration configuration;

  /// [ValueNotifier] of the [PaddingWidgetShowcaseOptionEnum] loaded.
  final _modeEnumController = ValueNotifier(PaddingWidgetShowcaseOptionEnum.symmetric);
  ValueNotifier<PaddingWidgetShowcaseOptionEnum> get modeEnumController => _modeEnumController;
  PaddingWidgetShowcaseOptionEnum get modeEnum => _modeEnumController.value;

  /// [ValueNotifier] controlling if the option is enabled.
  late final ValueNotifier<bool> _enabledController;
  ValueNotifier<bool> get enabledController => _enabledController;
  bool get enabled => _enabledController.value;

  /// Generated [EdgeInsets].
  final _paddingController = ValueNotifier(EdgeInsets.zero);
  ValueNotifier<EdgeInsets> get paddingController => _paddingController;
  EdgeInsets get padding => _paddingController.value;

  /// Dispose function.
  void dispose() {
    _modeEnumController.dispose();
    _enabledController.dispose();
    _paddingController.dispose();
  }

  /// [EdgeInsets.all] on-changed.
  void allOnChanged(double value) {
    _paddingController.value = EdgeInsets.all(value);
  }

  /// [EdgeInsets.symmetric]'s vertical on-changed.
  void verticalOnChanged(double value) {
    _paddingController.value = padding.copyWith(top: value, bottom: value);
  }

  /// [EdgeInsets.symmetric]'s horizontal on-changed.
  void horizontalOnChanged(double value) {
    _paddingController.value = padding.copyWith(left: value, right: value);
  }

  /// [EdgeInsets.only]'s top on-changed.
  void topOnChanged(double value) {
    _paddingController.value = padding.copyWith(top: value);
  }

  /// [EdgeInsets.only]'s bottom on-changed.
  void bottomOnChanged(double value) {
    _paddingController.value = padding.copyWith(bottom: value);
  }

  /// [EdgeInsets.only]'s left on-changed.
  void leftOnChanged(double value) {
    _paddingController.value = padding.copyWith(left: value);
  }

  /// [EdgeInsets.only]'s right on-changed.
  void rightOnChanged(double value) {
    _paddingController.value = padding.copyWith(right: value);
  }

  /// Listener of [_paddingController].
  void _paddingControllerListener() {
    configuration.paddingOnChanged(padding);
  }
}
