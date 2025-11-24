part of '../bundle/myoro_field_button_bundle.dart';

/// Checkbox variant of a filter button.
class MyoroCheckboxFilterButton<T> extends _Base<T> {
  /// Default constructor.
  MyoroCheckboxFilterButton({
    super.key,
    super.style,
    required String buttonLabel,
    IconData closeButtonIcon = _Base.closeButtonIconDefaultValue,
    String clearButtonText = kMyoroEmptyString,
    String applyButtonText = kMyoroEmptyString,
    MyoroDropdownTypeEnum dropdownType = MyoroFilterButtonState.dropdownTypeDefaultValue,
    required Set<T> items,
    required MyoroFilterButtonItemLabelBuilder<T> itemLabelBuilder,
    required Set<T> selectedItems,
    required MyoroCheckboxFilterButtonOnChanged<T> onChanged,
  }) : super(
         MyoroCheckboxFilterButtonState(
           buttonLabel,
           closeButtonIcon,
           clearButtonText,
           applyButtonText,
           dropdownType,
           items,
           itemLabelBuilder,
           selectedItems,
           onChanged,
         ),
       );
}
