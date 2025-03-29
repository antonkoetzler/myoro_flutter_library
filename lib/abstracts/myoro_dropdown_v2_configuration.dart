import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Builder of the [String] displayed when a [T] item is selected.
typedef MyoroDropdownV2ConfigurationSelectedItemBuilder<T> =
    String Function(T item);

/// Abstract model that encapsulates options for [MyoroDropdownV2].
///
/// [MyoroSingularDropdownV2] and [MyoroMultiDropdownV2] have their separation
/// configuration classes extending [MyoroDropdownV2Configuration] for specific args.
abstract class MyoroDropdownV2Configuration<T> extends Equatable {
  /// Label of the dropdown.
  ///
  /// [MyoroInputConfiguration.label] of [_Input].
  final String? label;

  /// If the dropdown is enabled/usable.
  ///
  /// Updates if you update the value of [enabled]
  /// within the same dropdown [Widget] lifespan.
  final bool enabled;

  /// Items of the menu.
  final MyoroDataConfiguration<T> dataConfiguration;

  /// [MyoroMenu.itemBuilder]. Builder for an item in the menu.
  final MyoroMenuItemBuilder<T> menuItemBuilder;

  /// Builder of the [String] displayed when a [T] item is selected.
  final MyoroDropdownV2ConfigurationSelectedItemBuilder<T> selectedItemBuilder;

  const MyoroDropdownV2Configuration({
    this.label,
    this.enabled = true,
    required this.dataConfiguration,
    required this.menuItemBuilder,
    required this.selectedItemBuilder,
  });

  MyoroDropdownV2Configuration<T> copyWith();
}
