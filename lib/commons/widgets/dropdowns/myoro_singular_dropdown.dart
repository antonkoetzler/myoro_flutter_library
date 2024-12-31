import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Dropdown that selects a single item at a time.
final class MyoroSingularDropdown<T> extends StatefulWidget {
  const MyoroSingularDropdown({super.key});

  @override
  State<MyoroSingularDropdown<T>> createState() => _MyoroSingularDropdownState<T>();
}

final class _MyoroSingularDropdownState<T> extends State<MyoroSingularDropdown<T>> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        _Input(),
        _Dropdown(),
      ],
    );
  }
}

final class _Input extends StatelessWidget {
  const _Input();

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Stack(
        children: [
          MyoroInput(
            configuration: MyoroInputConfiguration(
              inputStyle: context.resolveThemeExtension<MyoroSingularDropdownThemeExtension>().inputStyle,
            ),
          ),
          Container(
            width: double.infinity,
            // height: 43, // Height of the input.
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

final class _Dropdown extends StatelessWidget {
  const _Dropdown();

  @override
  Widget build(BuildContext context) {
    return MyoroMenu();
  }
}
