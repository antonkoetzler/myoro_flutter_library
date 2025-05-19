part of '../myoro_dropdown.dart';

/// [MyoroSingularDropdown] controller implementation if [MyoroDropdownController].
final class MyoroSingularDropdownController<T> extends MyoroDropdownControllerSharedImpl<T> {
  MyoroSingularDropdownController({required MyoroSingularDropdownConfiguration<T> configuration})
    : super(configuration);

  @override
  void _selectedItemsNotifierListener() {
    _typedConfiguration.onChanged?.call(selectedItem);
  }

  @override
  void _enabledNotifierListener() {
    _typedConfiguration.checkboxOnChanged?.call(enabled, selectedItem);
  }

  MyoroSingularDropdownConfiguration<T> get _typedConfiguration {
    return _configuration as MyoroSingularDropdownConfiguration<T>;
  }

  T? get selectedItem {
    final selectedItems = selectedItemsNotifier.value;
    return selectedItems.isEmpty ? null : selectedItems.first;
  }
}
