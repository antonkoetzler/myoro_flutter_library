import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
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
final class MyoroAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// If the app bar contains a border at the bottom.
  final bool bordered;

  /// Background color of the [MyoroAppBar].
  final Color? backgroundColor;

  /// Content of the app bar.
  final Widget child;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const MyoroAppBar({
    super.key,
    this.bordered = false,
    this.backgroundColor,
    required this.child,
  });

  static Finder finder({
    bool? bordered,
    bool borderedEnabled = false,
    Widget? child,
    bool childEnabled = false,
  }) {
    return find.byWidgetPredicate((Widget w) {
      return w is MyoroAppBar &&
          (borderedEnabled ? w.bordered == bordered : true) &&
          (childEnabled ? w.child == child : true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeExtension =
        context.resolveThemeExtension<MyoroAppBarThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Container(
            color: backgroundColor ?? themeExtension.primaryColor,
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
