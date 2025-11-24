part of '../bundle/myoro_field_button_bundle.dart';

/// Radio variant of a filter button.
class MyoroRadioFilterButton<T> extends _Base<T> {
  /// Default constructor.
  MyoroRadioFilterButton({
    super.key,
    super.style,
    required String buttonLabel,
    IconData closeButtonIcon = _Base.closeButtonIconDefaultValue,
    String clearButtonText = kMyoroEmptyString,
    String applyButtonText = kMyoroEmptyString,
    MyoroDropdownTypeEnum dropdownType = MyoroFilterButtonState.dropdownTypeDefaultValue,
    required Set<T> items,
    required MyoroFilterButtonItemLabelBuilder<T> itemLabelBuilder,
    required T? selectedItem,
    required MyoroRadioFilterButtonOnChanged<T> onChanged,
  }) : super(
         MyoroRadioFilterButtonState(
           buttonLabel,
           closeButtonIcon,
           clearButtonText,
           applyButtonText,
           dropdownType,
           items,
           itemLabelBuilder,
           selectedItem,
           onChanged,
         ),
       );
}
