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
///   Widget build(BuildContext context) {
///     return MyoroAppBar(...);
///   }
/// }
/// ```
class MyoroAppBar extends MyoroStatelessWidget implements PreferredSizeWidget {
  /// Configuration.
  final MyoroAppBarConfiguration configuration;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const MyoroAppBar({super.key, required this.configuration});

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroAppBarThemeExtension>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Container(
            color: configuration.backgroundColor ?? themeExtension.primaryColor,
            padding: themeExtension.contentPadding,
            child: configuration.child,
          ),
        ),
        if (configuration.bordered) ...[
          const MyoroBasicDivider(configuration: MyoroBasicDividerConfiguration(direction: Axis.horizontal)),
        ],
      ],
    );
  }
}
