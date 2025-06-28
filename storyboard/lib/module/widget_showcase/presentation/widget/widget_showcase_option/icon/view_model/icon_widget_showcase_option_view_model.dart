import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [IconWidgetShowcaseOptionViewModel].
final class IconWidgetShowcaseOptionViewModel {
  IconWidgetShowcaseOptionViewModel(this._configuration) {
    if (_configuration.enableOptionCheckboxOnChanged != null) {
      _enabledController = ValueNotifier(_configuration.enabled ?? true)..addListener(_enabledControllerListener);
    }
    _iconController = MyoroSingularDropdownController(
      enabled: enabled,
      initiallySelectedItem: _configuration.initiallySelectedIcon,
    );
  }

  /// Configuration.
  final IconWidgetShowcaseOptionConfiguration _configuration;
  IconWidgetShowcaseOptionConfiguration get configuration => _configuration;

  /// [ValueNotifier] of the [MyoroCheckbox] controlling if the option is enabled
  /// if [IconWidgetShowcaseOptionConfiguration.enableOptionCheckboxOnChanged] is not null.
  ValueNotifier<bool>? _enabledController;
  bool get enabled => enabledController.value;
  ValueNotifier<bool> get enabledController {
    assert(
      _configuration.enableOptionCheckboxOnChanged != null,
      '[IconWidgetShowcaseOptionViewModel.enabledController]: '
      '[_configuration.enableOptionCheckboxOnChanged] cannot be null.',
    );
    return _enabledController!;
  }

  /// Icon size.
  double? _iconSize;
  double? get iconSize => _iconSize;
  set iconSize(double? iconSize) {
    if (_iconSize == iconSize) return;
    _iconSize = iconSize;
    _configuration.iconSizeOnChanged?.call(_iconSize);
  }

  /// [MyoroSingularDropdownController] of the [IconData] selector.
  late final MyoroSingularDropdownController<IconData> _iconController;
  MyoroSingularDropdownController<IconData> get iconController => _iconController;
  IconData? get icon => _iconController.selectedItem;

  /// Dispose function.
  void dispose() {
    _enabledController?.dispose();
    _iconController.dispose();
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
    _iconController.toggleEnabled(enabled);
  }
}
