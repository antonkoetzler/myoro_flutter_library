import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [StatefulWidget] abstract for an MFL [Widget].
abstract class MyoroOverridableThemeExtensionStatefulWidget<T extends ThemeExtension<T>>
    extends StatefulWidget {
  const MyoroOverridableThemeExtensionStatefulWidget({super.key, this.themeExtensionBuilder});

  /// Builder for the [ThemeExtension] being injected.
  final T Function(T)? themeExtensionBuilder;

  /// Returns the selected [ThemeExtension] to add it within the [Provider] scope.
  T getThemeExtension(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<T>();
    return themeExtensionBuilder?.call(themeExtension) ?? themeExtension;
  }
}
