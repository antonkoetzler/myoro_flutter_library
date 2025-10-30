import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

part '../_widget/_search_button.dart';
part '../_widget/_input.dart';
part '../_widget/_myoro_search_input_state.dart';

/// Search input.
class MyoroSearchInput<T> extends StatefulWidget {
  /// Default constructor.
  const MyoroSearchInput({
    super.key,
    required this.itemBuilder,
    required this.selectedItemBuilder,
    required this.request,
  });

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
