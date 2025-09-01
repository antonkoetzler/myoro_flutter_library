import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [Widget] that injects [ThemeExtension]s into this [BuildContext]'s scope.
class MyoroMultiThemeExtensionInjector extends StatelessWidget {
  const MyoroMultiThemeExtensionInjector({super.key, required this.themeExtensions, required this.child})
    : assert(themeExtensions.length > 0, '[MyoroMultiThemeExtensionInjector]: [themeExtensions] cannot be empty.');

  /// [ThemeExtension]s to inject.
  final List<ThemeExtension> themeExtensions;

  /// [Widget] whose scope will now have this [ThemeExtension].
  final Widget child;

  @override
  Widget build(context) {
    return Theme(
      data: context.themeData.copyWith(extensions: themeExtensions),
      child: child,
    );
  }
}
