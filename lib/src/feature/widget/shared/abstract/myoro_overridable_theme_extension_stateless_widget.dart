import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';

/// [StatelessWidget] abstract for an MFL [Widget].
abstract class MyoroOverridableThemeExtensionStatelessWidget<T extends ThemeExtension<T>> extends StatelessWidget {
  const MyoroOverridableThemeExtensionStatelessWidget({super.key, this.themeExtension});

  /// Injected [ThemeExtension].
  final T? themeExtension;

  /// Returns the selected [ThemeExtension] to add it within the [Provider] scope.
  T getThemeExtension(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<T>();
    return this.themeExtension ?? themeExtension;
  }
}
