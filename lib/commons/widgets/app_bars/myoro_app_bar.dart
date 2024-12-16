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
final class MyoroAppBar extends StatelessWidget {
  /// If the app bar contains a border at the bottom.
  final bool bordered;

  /// Content of the app bar.
  final Widget child;

  const MyoroAppBar({
    super.key,
    this.bordered = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroAppBarThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Container(
            color: themeExtension.primaryColor,
            padding: themeExtension.contentPadding,
            child: child,
          ),
        ),
        if (bordered)
          const MyoroBasicDivider(
            configuration: MyoroBasicDividerConfiguration(
              direction: Axis.horizontal,
            ),
          ),
      ],
    );
  }
}
