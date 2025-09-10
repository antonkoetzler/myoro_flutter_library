import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

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
  static const showBottomDividerDefaultValue = false;

  const MyoroAppBar({
    super.key,
    this.themeExtension,
    this.showBottomDivider = showBottomDividerDefaultValue,
    required this.child,
  });

  /// [ThemeExtension]
  final MyoroAppBarThemeExtension? themeExtension;

  /// If there is a divider at the bottom of the app bar.
  final bool showBottomDivider;

  /// [Widget] of the [MyoroAppBar].
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final themeExtension = this.themeExtension ?? context.resolveThemeExtension<MyoroAppBarThemeExtension>();
    final backgroundColor = themeExtension.backgroundColor;
    final contentPadding = themeExtension.contentPadding;

    return MyoroSingularThemeExtensionWrapper(
      themeExtension: themeExtension,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Container(color: backgroundColor, padding: contentPadding, child: child),
          ),
          if (showBottomDivider) const MyoroBasicDivider(Axis.horizontal),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
