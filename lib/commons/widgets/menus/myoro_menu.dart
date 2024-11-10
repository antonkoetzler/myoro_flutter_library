import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A menu widget that should not be used in production code, it is used
/// within [MyoroDropdown] & [MyoroInput] similar to the software dmenu.
final class MyoroMenu extends StatelessWidget {
  const MyoroMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('World');
  }
}
