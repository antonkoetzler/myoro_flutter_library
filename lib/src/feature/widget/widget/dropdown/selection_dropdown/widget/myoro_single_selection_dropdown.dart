part of '../bundle/myoro_selection_dropdown_bundle.dart';

/// Single selection dropdown.
class MyoroSingleSelectionDropdown<T> extends StatelessWidget {
  /// Default value of [dropdownType].
  static const dropdownTypeDefaultValue = MyoroDropdownTypeEnum.expanding;

  /// Default constructor.
  const MyoroSingleSelectionDropdown({super.key, this.dropdownType = dropdownTypeDefaultValue, required this.request, required this.itemBuilder});

  /// Dropdown type.
  final MyoroDropdownTypeEnum dropdownType;

  /// Request.
  final MyoroMenuRequest<T> request;

  /// Item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  @override
  Widget build(_) {
    return _Base(dropdownType, request, itemBuilder);
  }
}
