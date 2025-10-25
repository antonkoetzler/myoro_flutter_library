import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part '_widget/_search_button.dart';
part '_widget/_myoro_search_input_state.dart';

/// Search input.
class MyoroSearchInput<T> extends StatefulWidget {
  static const dropdownTypeDefaultValue = MyoroDropdownConfiguration.dropdownTypeDefaultValue;
  static const labelDefaultValue = kMyoroEmptyString;

  const MyoroSearchInput({
    super.key,
    this.dropdownType = dropdownTypeDefaultValue,
    required this.selectedItemBuilder,
    this.label = labelDefaultValue,
    required this.request,
    this.onEndReachedRequest,
    required this.itemBuilder,
  });

  /// Dropdown type.
  final MyoroDropdownTypeEnum dropdownType;

  /// Builder of the [String] displayed when a [T] item is selected.
  final MyoroInputDropdownSelectedItemBuilder<T> selectedItemBuilder;

  /// Label of the input.
  final String label;

  /// Request to be executed when the search input is triggered.
  final MyoroSearchInputRequest<T> request;

  /// Request that executes when the bottom of the menu is reached.
  final MyoroSearchInputOnEndReachedRequest<T>? onEndReachedRequest;

  /// Menu item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  @override
  State<MyoroSearchInput<T>> createState() => _MyoroSearchInputState<T>();
}
