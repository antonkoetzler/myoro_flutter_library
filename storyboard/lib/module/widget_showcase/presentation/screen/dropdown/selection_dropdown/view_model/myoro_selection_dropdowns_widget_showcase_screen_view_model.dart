import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_selection_dropdowns_widget_showcase_screen_state.dart';

/// View model of [MyoroSelectionDropdownsWidgetShowcaseScreen].
final class MyoroSelectionDropdownsWidgetShowcaseScreenViewModel {
  /// State.
  final _state = MyoroSelectionDropdownsWidgetShowcaseScreenState();
  MyoroSelectionDropdownsWidgetShowcaseScreenState get state => _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Constructs a [MyoroSingleSelectionDropdownConfiguration].
  MyoroSingleSelectionDropdownConfiguration<String> buildSingleDropdownConfiguration(BuildContext context) {
    return MyoroSingleSelectionDropdownConfiguration(
      label: _state.label,
      menuTypeEnum: _state.menuTypeEnum,
      allowItemClearing: _state.allowItemClearing,
      selectedItemTextAlign: _state.selectedItemTextAlign,
      menuConfiguration: _state.menuViewModel.singleMenuConfiguration(context),
      selectedItemBuilder: _selectedItemBuilder,
      onChanged: (item) => _singleDropdownOnChanged(context, item),
      checkboxOnChanged: (enabled, item) => _singleDropdownCheckboxOnChanged(context, enabled, item),
    );
  }

  /// Constructs a [MyoroMultiSelectionDropdownConfiguration].
  MyoroMultiSelectionDropdownConfiguration<String> buildMultiDropdownConfiguration(BuildContext context) {
    return MyoroMultiSelectionDropdownConfiguration(
      label: _state.label,
      menuTypeEnum: _state.menuTypeEnum,
      allowItemClearing: _state.allowItemClearing,
      selectedItemTextAlign: _state.selectedItemTextAlign,
      menuConfiguration: _state.menuViewModel.multiMenuConfiguration(context),
      selectedItemBuilder: _selectedItemBuilder,
      onChanged: (items) => _multiDropdownOnChanged(context, items),
      checkboxOnChanged: (enabled, items) => _multiDropdownCheckboxOnChanged(context, enabled, items),
    );
  }

  /// [MyoroSelectionDropdownThemeExtension] of the dropdowns.
  MyoroSelectionDropdownThemeExtension buildStyle(BuildContext context) {
    final dropdownThemeExtension = context.resolveThemeExtension<MyoroSelectionDropdownThemeExtension>();

    return dropdownThemeExtension.copyWith(
      spacing: state.spacing,
      menuBorder: state.menuBorder,
      menuBorderRadius: state.menuBorderRadius,
    );
  }

  /// [MyoroSelectionDropdownConfiguration.selectedItemBuilder]
  String _selectedItemBuilder(String item) {
    return item;
  }

  /// [MyoroSingleSelectionDropdownConfiguration.onChanged]
  void _singleDropdownOnChanged(BuildContext context, String? item) {
    _showSnackBar(context, item != null ? '$item selected' : 'Item deselected');
  }

  /// [MyoroSingleSelectionDropdownConfiguration.checkboxOnChanged]
  void _singleDropdownCheckboxOnChanged(BuildContext context, bool enabled, String? item) {
    _showSnackBar(
      context,
      'Dropdown ${enabled ? 'enabled' : 'disabled'}, ${item != null ? '$item selected' : 'No item selected'}',
    );
  }

  /// [MyoroMultiSelectionDropdownConfiguration.onChanged]
  void _multiDropdownOnChanged(BuildContext context, Set<String> items) {
    _showSnackBar(context, items.isNotEmpty ? '${items.length} selected.' : 'No items selected.');
  }

  /// [MyoroMultiSelectionDropdownConfiguration.checkboxOnChanged]
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
