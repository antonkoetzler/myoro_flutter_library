import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A customizable dropdown widgets with features like multi-selection, search, etc.
final class MyoroDropdown<T> extends StatefulWidget {
  /// If the dropdown will have the functionality to search for options.
  final bool? enableSearch;

  /// Configuration for loading the dropdown's items.
  final MyoroDataConfiguration<T> dataConfiguration;

  /// Controller to externally manage the dropdown's state.
  final MyoroDropdownController<T>? controller;

  const MyoroDropdown({
    super.key,
    this.enableSearch,
    required this.dataConfiguration,
    this.controller,
  });

  @override
  State<MyoroDropdown<T>> createState() => _MyoroDropdownState<T>();
}

final class _MyoroDropdownState<T> extends State<MyoroDropdown<T>> {
  bool? get _enableSearch => widget.enableSearch ?? false;
  MyoroDataConfiguration<T> get _dataConfiguration => widget.dataConfiguration;

  MyoroDropdownController<T>? _localController;
  MyoroDropdownController<T> get _controller {
    return widget.controller ?? (_localController ??= MyoroDropdownController());
  }

  @override
  Widget build(BuildContext context) {
    return const MyoroInput(
      configuration: MyoroInputConfiguration(
        inputStyle: MyoroInputStyleEnum.outlined,
      ),
    );
  }
}
