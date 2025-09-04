import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

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
class MyoroAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyoroAppBar({super.key, this.style = const MyoroAppBarStyle(), required this.child});

  /// Style.
  final MyoroAppBarStyle style;

  /// [Widget] of the [MyoroAppBar].
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroAppBarThemeExtension>();

    final bordered = style.bordered;

    final backgroundColor = style.backgroundColor ?? themeExtension.backgroundColor;
    final contentPadding = style.contentPadding ?? themeExtension.contentPadding;

    return InheritedProvider.value(
      value: style,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Container(color: backgroundColor, padding: contentPadding, child: child),
          ),
          if (bordered) ...[
            const MyoroBasicDivider(configuration: MyoroBasicDividerConfiguration(direction: Axis.horizontal)),
          ],
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
