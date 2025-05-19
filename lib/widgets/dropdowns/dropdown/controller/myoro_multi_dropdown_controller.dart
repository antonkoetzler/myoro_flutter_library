part of '../myoro_dropdown.dart';

/// [MyoroMultiDropdown] controller implementation if [MyoroDropdownController].
final class MyoroMultiDropdownController<T> extends MyoroDropdownControllerSharedImpl<T> {
  MyoroMultiDropdownController({required MyoroMultiDropdownConfiguration<T> configuration}) : super(configuration);

  @override
  void _selectedItemsNotifierListener() {
    _typedConfiguration.onChanged?.call(selectedItems);
  }

  @override
  void _enabledNotifierListener() {
    _typedConfiguration.checkboxOnChanged?.call(enabled, selectedItems);
  }

  MyoroMultiDropdownConfiguration<T> get _typedConfiguration {
    return _configuration as MyoroMultiDropdownConfiguration<T>;
  }

  Set<T> get selectedItems => selectedItemsNotifier.value;
}
