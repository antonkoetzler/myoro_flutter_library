import 'package:flutter/material.dart';

/// App-level [BuildContext] provided by [MyoroApp] to avoid theme extension collisions.
///
/// This context represents the root context from [MyoroApp] and should be used
/// when resolving theme extensions to prevent collisions that can occur when
/// widgets are nested within other widgets that might have their own theme extension scopes.
class MyoroAppContext {
  const MyoroAppContext(this._context);

  final BuildContext _context;

  /// Resolves a theme extension from the app context to avoid collisions.
  T resolveThemeExtension<T extends ThemeExtension<T>>() {
    final extension = Theme.of(_context).extension<T>();
    if (extension == null) {
      throw StateError(
        '[MyoroAppContext.resolveThemeExtension]: [ThemeExtension] of type [$T] is not registered in the theme.'
        'Make sure the [ThemeExtension] is included in the theme extensions list when creating the [ThemeData].',
      );
    }
    return extension;
  }
}
