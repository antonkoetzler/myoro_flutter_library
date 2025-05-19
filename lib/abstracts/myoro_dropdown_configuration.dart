import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Builder of the [String] displayed when a [T] item is selected.
typedef MyoroDropdownConfigurationSelectedItemBuilder<T> = String Function(T item);

/// Abstract model that encapsulates options for [MyoroDropdown].
///
/// [MyoroSingularDropdown] and [MyoroMultiDropdown] have their separation
/// configuration classes extending [MyoroDropdownConfiguration] for specific args.
abstract class MyoroDropdownConfiguration<T> extends Equatable {
  static const labelDefaultValue = '';
  static const menuTypeEnumDefaultValue = MyoroDropdownMenuTypeEnum.expanding;
  static const enabledDefaultValue = true;
  static const allowItemClearingDefaultValue = true;
  static const selectedItemTextAlignDefaultValue = MyoroInputConfiguration.textAlignDefaultValue;
  static const menuMaxHeightDefaultValue = double.infinity;

  /// Label of the dropdown.
  ///
  /// [MyoroInputConfiguration.label] of [_Input].
  final String label;

  /// Initially selected items of the [_Dropdown].
  final Set<T> initiallySelectedItems;

  /// [_Menu]s [Widget] composition.
  final MyoroDropdownMenuTypeEnum menuTypeEnum;

  /// If the dropdown is enabled/usable.
  ///
  /// Updates if you update the value of [enabled]
  /// within the same dropdown [Widget] lifespan.
  final bool enabled;

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
    required this.initiallySelectedItems,
    required this.menuTypeEnum,
    required this.enabled,
    required this.allowItemClearing,
    required this.selectedItemTextAlign,
    required this.menuConfiguration,
    required this.selectedItemBuilder,
  });

  /// Standard [copyWith] implementation.
  MyoroDropdownConfiguration<T> copyWith();

  /// Returns if the checkbox callback is provided.
  bool get checkboxOnChangedNotNull;
}
