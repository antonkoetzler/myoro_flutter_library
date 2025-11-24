part of 'myoro_menu_item.dart';

/// [MyoroRadio] variant of [MyoroMenuItem].
@myoroModel
class MyoroMenuRadioItem extends MyoroMenuItem with _$MyoroMenuRadioItemMixin {
  /// Default value of [style].
  static const styleDefaultValue = MyoroRadio.styleDefaultValue;

  /// Default value of [label].
  static const labelDefaultValue = MyoroRadio.labelDefaultValue;

  /// Default value of [value].
  static const valueDefaultValue = false;

  /// Default constructor.
  const MyoroMenuRadioItem({
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

  /// [MyoroRadio.style].
  final MyoroRadioStyle style;

  /// [MyoroRadio.label].
  final String label;

  /// [MyoroRadio.value].
  final bool value;

  /// [MyoroRadio.onChanged].
  final MyoroRadioOnChanged onChanged;
}
