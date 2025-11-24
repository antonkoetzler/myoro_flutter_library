part of 'myoro_menu_item.dart';

/// [MyoroRadio] variant of [MyoroMenuItem].
@myoroModel
class MyoroMenuCheckboxItem extends MyoroMenuItem with _$MyoroMenuCheckboxItemMixin {
  /// Default value of [style].
  static const styleDefaultValue = MyoroCheckbox.styleDefaultValue;

  /// Default value of [label].
  static const labelDefaultValue = MyoroCheckbox.labelDefaultValue;

  /// Default value of [value].
  static const valueDefaultValue = MyoroCheckbox.valueDefaultValue;

  /// Default constructor.
  const MyoroMenuCheckboxItem({
    super.cursor,
    super.tooltipText,
    super.onTapDown,
    super.onTapUp,
    super.isLoading,
    this.style = styleDefaultValue,
    this.label = labelDefaultValue,
    this.value = valueDefaultValue,
    required this.onChanged,
  });

  /// [MyoroCheckbox.style].
  final MyoroCheckboxStyle style;

  /// [MyoroCheckbox.label].
  final String label;

  /// [MyoroCheckbox.value].
  final bool value;

  /// [MyoroCheckbox.onChanged].
  final MyoroCheckboxOnChanged onChanged;
}
