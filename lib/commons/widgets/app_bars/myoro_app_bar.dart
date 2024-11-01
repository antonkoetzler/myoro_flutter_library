import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Library's [AppBar] widget.
///
/// Example of using the widget with [MyoroScreen]:
/// ``` dart
/// final class FooAppBar extends StatelessWidget implements PreferredSizeWidget {
///   const FooAppBar({super.key});
///
///   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
///
///   @override
///   Widget build(BuildContext context) {
///     return MyoroAppBar(...);
///   }
/// }
/// ```
final class MyoroAppBar extends AppBar {
  MyoroAppBar({
    Key? key,
    required Widget child,
  }) : super(
          key: key,
          title: child,
        );
}
