import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Library's [AppBar] widget.
///
/// Example of using the widget with [MyoroScreen]:
/// ``` dart
/// class FooAppBar extends StatelessWidget implements PreferredSizeWidget {
///   const FooAppBar({super.key});
///
///   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
///
///   @override
///   Widget build(context) {
///     return MyoroAppBar(...);
///   }
/// }
/// ```
class MyoroAppBar extends MyoroStatelessWidget implements PreferredSizeWidget {
  const MyoroAppBar({super.key, required this.child});

  /// [Widget] of the [MyoroAppBar].
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroAppBarThemeExtension>();
    final bordered = themeExtension.bordered;
    final backgroundColor = themeExtension.backgroundColor;
    final contentPadding = themeExtension.contentPadding;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Container(color: backgroundColor, padding: contentPadding, child: child),
        ),
        if (bordered ?? false) ...[
          const MyoroBasicDivider(configuration: MyoroBasicDividerConfiguration(direction: Axis.horizontal)),
        ],
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
