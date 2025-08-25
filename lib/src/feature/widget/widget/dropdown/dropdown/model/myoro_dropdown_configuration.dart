import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Abstract model that encapsulates options for [MyoroDropdown].
///
/// [MyoroSingularDropdown] and [MyoroMultiDropdown] have their separation
/// configuration classes extending [MyoroDropdownConfiguration] for specific args.
abstract class MyoroDropdownConfiguration<T, C extends MyoroMenuConfiguration<T>> {
  static const labelDefaultValue = '';
  static const menuTypeEnumDefaultValue = MyoroDropdownMenuTypeEnum.expanding;
  static const enabledDefaultValue = true;
  static const allowItemClearingDefaultValue = true;
  static const selectedItemTextAlignDefaultValue = MyoroInputConfiguration.textAlignDefaultValue;

  const MyoroDropdownConfiguration(
    this.label,
    this.menuTypeEnum,
    this.enabled,
    this.allowItemClearing,
    this.selectedItemTextAlign,
    this.menuConfiguration,
    this.selectedItemBuilder,
  );

  /// Label of the dropdown.
  ///
  /// [MyoroInputConfiguration.label] of [_Input].
  final String label;

  /// [_Menu]s [Widget] composition.
  final MyoroDropdownMenuTypeEnum menuTypeEnum;

  /// If the dropdown is enabled.
  final bool enabled;

  /// If the clear button of [_Input]'s [MyoroInput] will be displayed.
  final bool allowItemClearing;

  /// [MyoroInputConfiguration.textAlign] of [_Input].
  final TextAlign selectedItemTextAlign;

  /// [MyoroMenuConfiguration] of the [_Menu]'s [MyoroMenu].
  final C menuConfiguration;

  /// Builder of the [String] displayed when a [T] item is selected.
  final MyoroDropdownConfigurationSelectedItemBuilder<T> selectedItemBuilder;

  MyoroDropdownConfiguration copyWith({
    String? label,
    MyoroDropdownMenuTypeEnum? menuTypeEnum,
    bool? enabled,
    bool? allowItemClearing,
    TextAlign? selectedItemTextAlign,
    C? menuConfiguration,
    MyoroDropdownConfigurationSelectedItemBuilder<T>? selectedItemBuilder,
  });

  /// Returns if the checkbox callback is provided.
  bool get checkboxOnChangedNotNull;
}
