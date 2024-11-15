import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A customizable dropdown widgets with features like multi-selection, search, etc.
final class MyoroDropdown extends StatefulWidget {
  const MyoroDropdown({super.key});

  @override
  State<MyoroDropdown> createState() => _MyoroDropdownState();
}

final class _MyoroDropdownState extends State<MyoroDropdown> {
  @override
  Widget build(BuildContext context) {
    return MyoroInput.number(
      configuration: const MyoroInputConfiguration(
        inputStyle: MyoroInputStyleEnum.outlined,
      ),
    );
  }
}
