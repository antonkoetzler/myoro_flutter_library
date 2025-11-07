import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_search_button.dart';
part '../_widget/_input.dart';
part '../_widget/_myoro_search_input_state.dart';

/// Search input.
class MyoroSearchInput<T> extends StatefulWidget {
  /// Default value for [style].
  static const styleDefaultValue = MyoroSearchInputStyle();

  /// Default value for [label].
  static const labelDefaultValue = kMyoroEmptyString;

  /// Default value for [dropdownType].
  static const dropdownTypeDefaultValue = MyoroSearchInputDropdownTypeEnum.expanding;

  /// Default constructor.
  const MyoroSearchInput({
    super.key,
    this.style = styleDefaultValue,
    this.label = labelDefaultValue,
    this.dropdownType = dropdownTypeDefaultValue,
    required this.itemBuilder,
    required this.selectedItemBuilder,
    required this.request,
  });

  /// Style.
  final MyoroSearchInputStyle style;

  /// Label.
  final String label;

  /// Dropdown type.
  final MyoroSearchInputDropdownTypeEnum dropdownType;

  /// Item builder.
  final MyoroMenuItemBuilder<T> itemBuilder;

  /// [String] builder of the item that is clicked in the dropdown.
  final MyoroSearchInputSelectedItemBuilder<T> selectedItemBuilder;

  /// Items builder.
  final MyoroSearchInputRequest<T> request;

  /// Create state function.
  @override
  State<MyoroSearchInput<T>> createState() => _MyoroSearchInputState<T>();
}
