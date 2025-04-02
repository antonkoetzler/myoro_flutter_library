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
  static const enabledDefaultValue = true;
  static const allowItemClearingDefaultValue = true;

  /// Label of the dropdown.
  ///
  /// [MyoroInputConfiguration.label] of [_Input].
  final String? label;

  /// If the dropdown is enabled/usable.
  ///
  /// Updates if you update the value of [enabled]
  /// within the same dropdown [Widget] lifespan.
  final bool enabled;

  /// If the clear button of [_Input]'s [MyoroInput] will be displayed.
  final bool allowItemClearing;

  /// Items of the menu.
  final MyoroDataConfiguration<T> dataConfiguration;

  /// [MyoroMenu.itemBuilder]. Builder for an item in the menu.
  final MyoroMenuItemBuilder<T> menuItemBuilder;

  /// Builder of the [String] displayed when a [T] item is selected.
  final MyoroDropdownConfigurationSelectedItemBuilder<T> selectedItemBuilder;

  /// Controller of the dropdown.
  final MyoroDropdownController<T> controller;

  const MyoroDropdownConfiguration({
    this.label,
    this.enabled = enabledDefaultValue,
    this.allowItemClearing = allowItemClearingDefaultValue,
    required this.dataConfiguration,
    required this.menuItemBuilder,
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
