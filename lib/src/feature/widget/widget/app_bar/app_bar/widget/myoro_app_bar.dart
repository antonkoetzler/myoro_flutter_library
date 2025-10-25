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
  /// Default value of [style].
  static const styleDefaultValue = MyoroAppBarStyle();

  /// Default value of [showBottomDivider].
  static const showBottomDividerDefaultValue = false;

  /// Default constructor.
  const MyoroAppBar({
    super.key,
    this.style = styleDefaultValue,
    this.showBottomDivider = showBottomDividerDefaultValue,
    required this.child,
  });

  /// [ThemeExtension]
  final MyoroAppBarStyle style;

  /// If there is a divider at the bottom of the app bar.
  final bool showBottomDivider;

  /// [Widget] of the [MyoroAppBar].
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroAppBarThemeExtension>();
    final backgroundColor = style.backgroundColor ?? themeExtension.backgroundColor;
    final contentPadding = style.contentPadding ?? themeExtension.contentPadding;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Container(width: double.infinity, color: backgroundColor, padding: contentPadding, child: child),
        ),
        if (showBottomDivider) const MyoroBasicDivider(Axis.horizontal),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
