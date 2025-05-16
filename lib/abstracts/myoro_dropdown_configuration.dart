import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Builder of the [String] displayed when a [T] item is selected.
typedef MyoroDropdownConfigurationSelectedItemBuilder<T> =
    String Function(T item);

/// Abstract model that encapsulates options for [MyoroDropdown].
///
/// [MyoroSingularDropdown] and [MyoroMultiDropdown] have their separation
/// configuration classes extending [MyoroDropdownConfiguration] for specific args.
abstract class MyoroDropdownConfiguration<T> extends Equatable {
  static const menuTypeEnumDefaultValue = MyoroDropdownMenuTypeEnum.expanding;
  static const enabledDefaultValue = true;
  static const allowItemClearingDefaultValue = true;
  static const menuMaxHeightDefaultValue = double.infinity;

  /// Label of the dropdown.
  ///
  /// [MyoroInputConfiguration.label] of [_Input].
  final String label;

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

  /// Controller of the dropdown.
  final MyoroDropdownController<T> controller;

  const MyoroDropdownConfiguration({
    this.label = '',
    this.menuTypeEnum = menuTypeEnumDefaultValue,
    this.enabled = enabledDefaultValue,
    this.allowItemClearing = allowItemClearingDefaultValue,
    this.selectedItemTextAlign = MyoroInputConfiguration.textAlignDefaultValue,
    required this.menuConfiguration,
    required this.selectedItemBuilder,
    required this.controller,
  });

  /// Standard [copyWith] implementation.
  MyoroDropdownConfiguration<T> copyWith();

  /// Sets [controller] with initially selected items in the dropdown.
  void setInitiallySelectedItems();

  /// Handles executing the on changed functions of extended classes.
  void handleOnChanged(Set<T> selectedItems);

  /// Handles executing the checkbox on changed functions of extended classes.
  void handleCheckboxOnChanged(bool enabled, Set<T> selectedItems);

  /// Returns if the checkbox callback is provided.
  bool get checkboxOnChangedNotNull;
}
