import 'package:flutter/material.dart';
import 'package:icon_data_parser/icon_data_parser.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// View model of [IconWidgetShowcaseOption].
final class IconWidgetShowcaseOptionViewModel {
  IconWidgetShowcaseOptionViewModel(this._configuration) {
    _enabledController = ValueNotifier(_configuration.enabled ?? true)..addListener(_enabledControllerListener);
    _iconController = MyoroSingleSelectionDropdownController(
      configuration: MyoroSingleSelectionDropdownConfiguration(
        label: 'Icon',
        selectedItemBuilder: (icon) => icon.name!.capitalized,
        onChanged: _configuration.iconOnChanged,
        menuConfiguration: MyoroSingleMenuConfiguration(
          request: kMyoroTestIcons.toSet,
          selectedItem: _configuration.selectedIcon,
          itemBuilder: (icon) {
            return MyoroMenuItem(
              iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
                textConfiguration: MyoroTextConfiguration(text: icon.name!.capitalized),
              ),
            );
          },
        ),
        enabled: _configuration.enableOptionCheckboxOnChanged != null ? enabled : true,
      ),
    );
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

  /// [MyoroSingleSelectionDropdownController] of the [IconData] selector.
  late final MyoroSingleSelectionDropdownController<IconData> _iconController;
  MyoroSingleSelectionDropdownController<IconData> get iconController => _iconController;
  IconData? get icon => _iconController.selectedItem;

  /// Dispose function.
  void dispose() {
    _enabledController.dispose();
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
    _configuration.enableOptionCheckboxOnChanged?.call(enabled, icon, iconSize);
    _iconController.toggleEnabled(enabled);
  }
}
