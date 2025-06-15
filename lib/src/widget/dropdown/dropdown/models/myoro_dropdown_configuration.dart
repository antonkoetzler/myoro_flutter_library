import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Builder of the [String] displayed when a [T] item is selected.
typedef MyoroDropdownConfigurationSelectedItemBuilder<T> = String Function(T item);

/// Abstract model that encapsulates options for [MyoroDropdown].
///
/// [MyoroSingularDropdown] and [MyoroMultiDropdown] have their separation
/// configuration classes extending [MyoroDropdownConfiguration] for specific args.
abstract class MyoroDropdownConfiguration<T> {
  static const labelDefaultValue = '';
  static const menuTypeEnumDefaultValue = MyoroDropdownMenuTypeEnum.overlay;
  static const enabledDefaultValue = true;
  static const allowItemClearingDefaultValue = true;
  static const selectedItemTextAlignDefaultValue = MyoroInputConfiguration.textAlignDefaultValue;
  static const menuMaxHeightDefaultValue = double.infinity;

  /// Label of the dropdown.
  ///
  /// [MyoroInputConfiguration.label] of [_Input].
  final String label;

  /// [_Menu]s [Widget] composition.
  final MyoroDropdownMenuTypeEnum menuTypeEnum;

  /// If the clear button of [_Input]'s [MyoroInput] will be displayed.
  final bool allowItemClearing;

  /// [MyoroInputConfiguration.textAlign] of [_Input].
  final TextAlign selectedItemTextAlign;

  /// [MyoroMenuConfiguration] of the [_Menu]'s [MyoroMenu].
  final MyoroMenuConfiguration<T> menuConfiguration;

  /// Builder of the [String] displayed when a [T] item is selected.
  final MyoroDropdownConfigurationSelectedItemBuilder<T> selectedItemBuilder;

  const MyoroDropdownConfiguration({
    required this.label,
    required this.menuTypeEnum,
    required this.allowItemClearing,
    required this.selectedItemTextAlign,
    required this.menuConfiguration,
    required this.selectedItemBuilder,
  });

  /// Returns if the checkbox callback is provided.
  bool get checkboxOnChangedNotNull;
}
