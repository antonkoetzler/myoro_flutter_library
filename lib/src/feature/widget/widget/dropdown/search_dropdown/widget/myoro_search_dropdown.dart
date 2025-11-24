import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_search_button.dart';
part '../_widget/_input.dart';
part '../_widget/_myoro_search_dropdown_state.dart';

/// Search dropdown.
class MyoroSearchDropdown<T> extends StatefulWidget {
  /// Default value for [style].
  static const styleDefaultValue = MyoroSearchDropdownStyle();

  /// Default value for [label].
  static const labelDefaultValue = kMyoroEmptyString;

  /// Default value for [dropdownType].
  static const dropdownTypeDefaultValue = MyoroSearchDropdownDropdownTypeEnum.expanding;

  /// Default value for [placeholder].
  static const placeholderDefaultValue = kMyoroEmptyString;

  /// Default constructor.
  const MyoroSearchDropdown({
    super.key,
    this.style = styleDefaultValue,
    this.label = labelDefaultValue,
    this.dropdownType = dropdownTypeDefaultValue,
    required this.itemBuilder,
    this.placeholder = placeholderDefaultValue,
    required this.selectedItemBuilder,
    required this.requestCallback,
    this.onChanged,
    this.onFieldSubmitted,
    this.validation,
    this.focusNode,
  });

  /// Style.
  final MyoroSearchDropdownStyle style;

  /// Label.
  final String label;

  /// Placeholder.
  final String placeholder;

  /// Dropdown type.
  final MyoroSearchDropdownDropdownTypeEnum dropdownType;

  /// Item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  /// [String] builder of the item that is clicked in the dropdown.
  final MyoroSearchDropdownSelectedItemBuilder<T> selectedItemBuilder;

  /// Items builder.
  final MyoroSearchDropdownRequest<T> requestCallback;

  /// On changed.
  final MyoroSearchDropdownOnChanged<T>? onChanged;

  /// On field submitted.
  final MyoroSearchDropdownOnFieldSubmitted<T>? onFieldSubmitted;

  /// Validation.
  final MyoroSearchDropdownValidation<T>? validation;

  /// Focus node.
  final FocusNode? focusNode;

  /// Create state function.
  @override
  State<MyoroSearchDropdown<T>> createState() {
    return _MyoroSearchDropdownState<T>();
  }
}
