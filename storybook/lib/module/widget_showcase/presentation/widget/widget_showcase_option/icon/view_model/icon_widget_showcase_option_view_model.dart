import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [IconWidgetShowcaseOption].
final class IconWidgetShowcaseOptionViewModel {
  IconWidgetShowcaseOptionViewModel(this._configuration) {
    _enabledController = ValueNotifier(_configuration.enabled ?? true)..addListener(_enabledControllerListener);
    _iconSize = _configuration.selectedIconSize;
  }

  /// Configuration.
  final IconWidgetShowcaseOptionConfiguration _configuration;
  IconWidgetShowcaseOptionConfiguration get configuration => _configuration;

  /// [ValueNotifier] of the [MyoroCheckbox] controlling if the option is enabled
  /// if [IconWidgetShowcaseOptionConfiguration.enableOptionCheckboxOnChanged] is not null.
  late final ValueNotifier<bool> _enabledController;
  ValueNotifier<bool> get enabledController => _enabledController;
  bool get enabled => enabledController.value;

  /// Icon size.
  double? _iconSize;
  double? get iconSize => _iconSize;
  set iconSize(double? iconSize) {
    if (_iconSize == iconSize) return;
    _iconSize = iconSize;
    _configuration.iconSizeOnChanged?.call(_iconSize);
  }

  /// Dispose function.
  void dispose() {
    _enabledController.dispose();
  }

  /// [MyoroInputConfiguration.checkboxOnChanged] of the icon size selector.
  void iconSizeInputCheckboxOnChanged(bool enabled, String inputText) {
    assert(
      configuration.iconSizeCheckboxOnChanged != null,
      '[IconWidgetShowcaseOptionViewModel.iconSizeCheckboxOnChanged]: [configuration.iconSizeCheckboxOnChanged] cannot be null.',
    );
    configuration.iconSizeCheckboxOnChanged!(enabled, enabled ? double.parse(inputText) : null);
  }

  /// Listener of [_enabledController].
  void _enabledControllerListener() {
    _configuration.enableOptionCheckboxOnChanged?.call(enabled, configuration.selectedIcon, iconSize);
  }
}
