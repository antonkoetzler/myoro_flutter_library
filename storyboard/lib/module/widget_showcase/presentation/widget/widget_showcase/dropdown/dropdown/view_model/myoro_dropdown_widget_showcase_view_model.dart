import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroDropdownWidgetShowcase].
final class MyoroDropdownWidgetShowcaseViewModel {
  final _state = MyoroDropdownWidgetShowcaseState();
  MyoroDropdownWidgetShowcaseState get state => _state;

  final _menuViewModel = MyoroMenuWidgetShowcaseViewModel();
  MyoroMenuWidgetShowcaseViewModel get menuViewModel => _menuViewModel;

  /// Dispose function.
  void dispose() {
    _state.dispose();
    _menuViewModel.dispose();
  }

  /// Constructs a [MyoroSingularDropdownConfiguration].
  MyoroSingularDropdownConfiguration<String> buildSingularDropdownConfiguration(BuildContext context) {
    return MyoroSingularDropdownConfiguration(
      label: _state.label,
      menuTypeEnum: _state.menuTypeEnum,
      allowItemClearing: _state.allowItemClearing,
      selectedItemTextAlign: _state.selectedItemTextAlign,
      menuConfiguration: menuViewModel.configuration,
      selectedItemBuilder: _selectedItemBuilder,
      onChanged: (item) => _singularDropdownOnChanged(context, item),
      checkboxOnChanged: (enabled, item) => _singularDropdownCheckboxOnChanged(context, enabled, item),
    );
  }

  /// Constructs a [MyoroMultiDropdownConfiguration].
  MyoroMultiDropdownConfiguration<String> buildMultiDropdownConfiguration(BuildContext context) {
    return MyoroMultiDropdownConfiguration(
      label: _state.label,
      menuTypeEnum: _state.menuTypeEnum,
      allowItemClearing: _state.allowItemClearing,
      selectedItemTextAlign: _state.selectedItemTextAlign,
      menuConfiguration: menuViewModel.configuration,
      selectedItemBuilder: _selectedItemBuilder,
      onChanged: (items) => _multiDropdownOnChanged(context, items),
      checkboxOnChanged: (enabled, items) => _multiDropdownCheckboxOnChanged(context, enabled, items),
    );
  }

  /// [MyoroDropdownConfiguration.selectedItemBuilder]
  String _selectedItemBuilder(String item) {
    return item;
  }

  /// [MyoroSingularDropdownConfiguration.onChanged]
  void _singularDropdownOnChanged(BuildContext context, String? item) {
    _showSnackBar(context, item != null ? '$item selected' : 'Item deselected');
  }

  /// [MyoroSingularDropdownConfiguration.checkboxOnChanged]
  void _singularDropdownCheckboxOnChanged(BuildContext context, bool enabled, String? item) {
    _showSnackBar(
      context,
      'Dropdown ${enabled ? 'enabled' : 'disabled'}, ${item != null ? '$item selected' : 'No item selected'}',
    );
  }

  /// [MyoroMultiDropdownConfiguration.onChanged]
  void _multiDropdownOnChanged(BuildContext context, Set<String> items) {
    _showSnackBar(context, items.isNotEmpty ? '${items.length} selected.' : 'No items selected.');
  }

  /// [MyoroMultiDropdownConfiguration.checkboxOnChanged]
  void _multiDropdownCheckboxOnChanged(BuildContext context, bool enabled, Set<String> items) {
    _showSnackBar(
      context,
      'Dropdown ${enabled ? 'enabled' : 'disabled'}. ${items.isNotEmpty ? '${items.length} selected.' : 'No items selected'}.',
    );
  }

  /// Generic function to display a [MyoroSnackBar]
  void _showSnackBar(BuildContext context, String message) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(
        configuration: MyoroSnackBarConfiguration(snackBarType: MyoroSnackBarTypeEnum.attention, message: message),
      ),
    );
  }
}
